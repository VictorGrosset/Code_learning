import time
import numpy as np
from zmqRemoteApi import RemoteAPIClient
from scara_robot_building import send_robot_coppelia
client = RemoteAPIClient()
sim = client.getObject('sim')
sim_ik = client.getObject('simIK')
ik_env=sim_ik.createEnvironment()
client.setStepping(True)


###### fonctions à ne pas modifier  ##########
def send_object_coppelia(name,type,size):
    #type :   1 = plane    2 = disc   3 = cuboid   4 = spheroid   5 = cylinder
    return sim.createPrimitiveShape(type,size)

def set_object_pos_coppelia(object,position):
    sim.setObjectPosition(object.handle,sim.handle_world,position)

def set_object_orient_coppelia(object,orientation):
    sim.setObjectOrientation(object.handle,sim.handle_world,orientation)

def set_object_color_coppelia(object,value):
    sim.setShapeColor(object.handle, None, sim.colorcomponent_ambient_diffuse, value)

def attach_object_EE_coppelia(robot,object):
    end_effector_handle = sim.getObject("/"+ robot.name +"_end_effector")
    object_handle = object.handle
    sim.setObjectParent(object_handle,end_effector_handle,'true')

def release_object_EE_coppelia(object):
    sim.setObjectParent(object.handle,-1,'true')

def move_robot_coppelia(robot,ref):
    initial_pos = [np.rad2deg(sim.getJointPosition(sim.getObject("/"+ robot.name +"_q1")))]
    initial_pos.append(np.rad2deg(sim.getJointPosition(sim.getObject("/"+ robot.name +"_q2"))))
    initial_pos.append(np.rad2deg(sim.getJointPosition(sim.getObject("/"+ robot.name +"_q3"))))
    pos_left= [-50,-95,-8]
    pos_middle= [60,85,-8]
    goal_angle = [0,0,0]
    if ref == "left":
        goal_angle = pos_left
    elif ref == "middle":
        goal_angle = pos_middle
    for i in range(10):
        sim.setJointPosition(sim.getObject("/SCARA_q1"),np.deg2rad(initial_pos[0]+((goal_angle[0]-initial_pos[0])/10)*(i+1)))
        sim.setJointPosition(sim.getObject("/SCARA_q2"),np.deg2rad(initial_pos[1]+((goal_angle[1]-initial_pos[1])/10)*(i+1)))
        sim.setJointPosition(sim.getObject("/SCARA_q3"),np.deg2rad(initial_pos[2]+((goal_angle[2]-initial_pos[2])/10)*(i+1)))
        