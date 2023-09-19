##################################################################################
########       /!\  Read the instruction before run the scripts  /!\      ########
##################################################################################

# To start, go to the Sassa 3DDL project on onshape 
#       Modify as needed the lengths of lower_arm and upper_arm in the 3d_printed_parts folder
#       Then export the Base, angle_motor, lower_arm and upper_arm parts from the sub_assemblies folder in binary stl, with the big resolution and in meter. 
#       Please do not change the name !!!
#       Put the stl files in the same folder.
#
# Now go to your script:
#       Fill the editable parameters with:
#           for the lengths, the same lengths that you chose on onshape
#           for the path, copy paste the path where you put your meshes between quotes and add an r in front  /!\ WITHOUT SPACE /!\
#           for scaling, let 1 (this is a proportional factor that changes the size of your shape)

from zmqRemoteApi import RemoteAPIClient
import numpy as np
import os

def send_robot_coppelia(name, type):
    directory = os.getcwd()
    if type == "SCARA":
        # Editable parameters
        scaling = 1                 # 1 permit to keep the same size as on onshape
        path = directory + "/meshes/meshes_organise/scara_robot"   # your path folder


        client = RemoteAPIClient()
        sim = client.getObject('sim')
        client.setStepping(True)

        #sim.addLog (sim.verbosity_warnings, "the connection with your python script has been successfully established")



        # Import shapes
        sim.importShape(0, path + r"/Base.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/first_axe.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/cove.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/lower_cove.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/second_axe.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/translate_part.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/end_effector.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/cover_translate.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/cover_second_axe.stl", 32, 0, scaling)

        #sim.addLog (sim.verbosity_warnings, "the shapes have been successfully imported")



        # Definition of shapes
        """if os.name == "nt":
            print ("windows")
            Base = sim.getObject("/Shape[0]")
            first_axe = sim.getObject("/Shape[1]")
            cove = sim.getObject("/Shape[2]")
            lower_cove = sim.getObject("/Shape[3]")
            second_axe = sim.getObject("/Shape[4]")
            translate_part = sim.getObject("/Shape[5]")
            end_effector = sim.getObject("/Shape[6]")
            cover_translate = sim.getObject("/Shape[7]")
            cover_second_axe = sim.getObject("/Shape[8]")
        else:
        """
        Base = sim.getObject("/Base")
        first_axe = sim.getObject("/first_axe")
        cove = sim.getObject("/cove")
        lower_cove = sim.getObject("/lower_cove")
        second_axe = sim.getObject("/second_axe")
        translate_part = sim.getObject("/translate_part")
        end_effector = sim.getObject("/end_effector")
        cover_translate = sim.getObject("/cover_translate")
        cover_second_axe = sim.getObject("/cover_second_axe")


        object_simulation = [Base, first_axe, cove, lower_cove, second_axe, translate_part, end_effector, cover_translate, cover_second_axe]
        for i in object_simulation:
            sim.setObjectOrientation(i, sim.handle_world, [0, 0, np.deg2rad(-54.3-90)])


        # Placement of object markers
        sim.relocateShapeFrame(Base, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(first_axe, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(cove, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(lower_cove, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(second_axe, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(translate_part, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(end_effector, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(cover_translate, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(cover_second_axe, [0, 0, 0, 0, 0, 0, 0])


        # Creation and placement of the first joint
        sim.createJoint(sim.joint_revolute_subtype, sim.jointmode_dynamic, 0, [0.07*scaling, 0.01*scaling])
        q1 = sim.getObject("/Revolute_joint")
        sim.setObjectPosition(q1 , sim.handle_world, [0, 0, 0.3*scaling])

        # Creation and Placement of the second joint
        sim.createJoint(sim.joint_revolute_subtype, sim.jointmode_dynamic, 0, [0.08*scaling, 0.01*scaling])
        q2 = sim.getObject("/Revolute_joint[1]")
        sim.setObjectPosition(q2 , sim.handle_world, [0.2*scaling, 0, 0.35*scaling])

        # Creation and Placement of the third joint
        sim.createJoint(sim.joint_prismatic_subtype, sim.jointmode_dynamic, 0, [0.08*scaling, 0.01*scaling])
        q3 = sim.getObject("/Prismatic_joint")
        sim.setObjectPosition(q3 , sim.handle_world, [0.35*scaling, 0, 0.4*scaling])


        # Creation and Placement of the fourth joint
        sim.createJoint(sim.joint_revolute_subtype, sim.jointmode_dynamic, 0, [0.08*scaling, 0.01*scaling])
        q4 = sim.getObject("/Revolute_joint[2]")
        sim.setObjectPosition(q4, sim.handle_world, [0.35*scaling, 0, 0.4*scaling])

        #sim.addLog (sim.verbosity_warnings, "the joint have been successfully positioned")

        # Renaming shapes
        sim.setObjectAlias(Base , name+"_Base")
        sim.setObjectAlias(q1 , name+"_q1")
        sim.setObjectAlias(first_axe , name+"_first_axe")
        sim.setObjectAlias(q2 , name+"_q2")
        sim.setObjectAlias(cove , name+"_cove")
        sim.setObjectAlias(lower_cove , name+"_lower_cove")
        sim.setObjectAlias(second_axe , name+"_second_axe")
        sim.setObjectAlias(q3 , name+"_q3")
        sim.setObjectAlias(translate_part , name+"_translate_part")
        sim.setObjectAlias(q4 , name+"_q4")
        sim.setObjectAlias(end_effector , name+"_end_effector")
        sim.setObjectAlias(cover_translate , name+"_cover_translate")
        sim.setObjectAlias(cover_second_axe , name+"_cover_second_axe")

        #sim.addLog (sim.verbosity_warnings, "the shapes have been successfully renamed")

        # Parent child hierarchy
        parent_child = [Base, q1, first_axe, q2, second_axe, q3, translate_part, q4, end_effector]
        for i in range(len(parent_child)-1, 0, -1):
            if (i==4):
                sim.setObjectParent(cover_translate, parent_child[i-1], 1)
                sim.setObjectParent(cover_second_axe, parent_child[i-1], 1)  
            elif (i==2):
                sim.setObjectParent(cove, parent_child[i-1], 1)  
                sim.setObjectParent(lower_cove, parent_child[i-1], 1)  

            sim.setObjectParent(parent_child[i], parent_child[i-1], 1)

        #sim.addLog (sim.verbosity_warnings, "the hierarchy of shapes has been successfully completed")



        # Coloring of shapes (RGB on 255 in purcent)
        object_simulation = [Base, first_axe, second_axe, cover_translate, cover_second_axe]
        for i in object_simulation:
            sim.setShapeColor(i, None, sim.colorcomponent_ambient_diffuse, [1, 0.55, 0])
            
        sim.setShapeColor(cove, None, sim.colorcomponent_ambient_diffuse, [0.23, 0.23, 0.23])
        sim.setShapeColor(lower_cove, None, sim.colorcomponent_ambient_diffuse, [0.23, 0.23, 0.23])
        sim.setShapeColor(translate_part, None, sim.colorcomponent_ambient_diffuse, [1, 1, 1])
        sim.setShapeColor(end_effector, None, sim.colorcomponent_ambient_diffuse, [1, 1, 1])

        #sim.addLog (sim.verbosity_warnings, "the shapes have been successfully colored")



    elif type == "3DDL":

        client = RemoteAPIClient()
        sim = client.getObject('sim')
        client.setStepping(True)
        
        #sim.addLog (sim.verbosity_warnings, "the connection with your python script has been successfully established")
        length_lower_arm = 220      # in mm

        scaling = 1                 # 1 permit to keep the same size as on onshape
        path = directory + "/meshes/meshes_organise/3DDL"   # your path folder

        # Constants
        height_base = 0.0465
        height_angle_motor = 0.10979

        translation_z_base = height_base/2
        translation_z_angle_moteur = height_base + height_angle_motor/2



        # Import shapes
        sim.importShape(0, path + r"/Base.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/angle_motor.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/lower_arm.stl", 32, 0, scaling)
        sim.importShape(0, path + r"/upper_arm.stl", 32, 0, scaling)

        #sim.addLog (sim.verbosity_warnings, "the shapes have been successfully imported")



        # Definition of shapes
        Base = sim.getObject("/Base")
        angle_motor = sim.getObject("/angle_motor")
        lower_arm = sim.getObject("/lower_arm")
        upper_arm = sim.getObject("/upper_arm")



        sim.setObjectOrientation(Base, sim.handle_world, [0, 0, np.deg2rad(-59.3)])
        sim.setObjectOrientation(angle_motor, sim.handle_world, [0, 0, np.deg2rad(-59.3)])
        sim.setObjectOrientation(lower_arm, sim.handle_world, [0, 0, np.deg2rad(-59.3)])
        sim.setObjectOrientation(upper_arm, sim.handle_world, [0, 0, np.deg2rad(-59.3)])


        # Placement of object markers
        sim.relocateShapeFrame(Base, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(angle_motor, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(lower_arm, [0, 0, 0, 0, 0, 0, 0])
        sim.relocateShapeFrame(upper_arm, [0, 0, 0, 0, 0, 0, 0])


        # Creation and placement of the first joint
        sim.createJoint(sim.joint_revolute_subtype, sim.jointmode_dynamic, 0, [0.07*scaling, 0.01*scaling])
        q1 = sim.getObject("/Revolute_joint")
        sim.setObjectPosition(q1 , sim.handle_world, [0, 0, translation_z_base*scaling])

        # Creation and Placement of the second joint
        sim.createJoint(sim.joint_revolute_subtype, sim.jointmode_dynamic, 0, [0.08*scaling, 0.01*scaling])
        q2 = sim.getObject("/Revolute_joint[1]")
        sim.setObjectOrientation(q2, -1, [np.deg2rad(0), np.deg2rad(90), np.deg2rad(90)])
        sim.setObjectPosition(q2 , sim.handle_world, [0.0232*scaling, 0, (translation_z_angle_moteur+0.005)*scaling])

        # Creation and placement of the third joint
        sim.createJoint(sim.joint_revolute_subtype, sim.jointmode_dynamic, 0, [0.025*scaling, 0.01*scaling])
        q3 = sim.getObject("/Revolute_joint[2]")
        matrix = sim.getObjectMatrix(q2, -1)
        matrix[3] += 0.0635*scaling
        matrix[11] += length_lower_arm/1000*scaling
        sim.setObjectMatrix(q3, -1, matrix)
        position_z = matrix[11]

        #sim.addLog (sim.verbosity_warnings, "the joint have been successfully positioned")

        # Renaming shapes
        sim.setObjectAlias(Base , name+"_Base")
        sim.setObjectAlias(q1 , name+"_q1_3ddl")
        sim.setObjectAlias(angle_motor , name+"_angle_motor")
        sim.setObjectAlias(q2 , name+"_q2_3ddl")
        sim.setObjectAlias(lower_arm , name+"_lower_arm")
        sim.setObjectAlias(q3 , name+"_q3_3ddl")
        sim.setObjectAlias(upper_arm , name+"_upper_arm")

        #sim.addLog (sim.verbosity_warnings, "the shapes have been successfully renamed")

        # Parent child hierarchy
        parent_child = [Base, q1, angle_motor, q2, lower_arm, q3, upper_arm]
        for i in range(len(parent_child)-1, 0, -1):
            sim.setObjectParent(parent_child[i], parent_child[i-1], 1)

        #sim.addLog (sim.verbosity_warnings, "the hierarchy of shapes has been successfully completed")



        # Coloring of shapes
        sim.setShapeColor(Base, None, sim.colorcomponent_ambient_diffuse, [0.32, 0.32, 0.32])
        sim.setShapeColor(angle_motor, None, sim.colorcomponent_ambient_diffuse, [0.32, 0.32, 0.32])
        sim.setShapeColor(lower_arm, None, sim.colorcomponent_ambient_diffuse, [1, 0.2, 0.1])
        sim.setShapeColor(upper_arm, None, sim.colorcomponent_ambient_diffuse, [1, 0.2, 0.1])

        #sim.addLog (sim.verbosity_warnings, "the shapes have been successfully colored")

    return Base




'''
# Another method to rotate shape
matrix = sim.getObjectMatrix(handle_object, -1)
matrix = sim.rotateAroundAxis(matrix, [0, 1, 0], [matrix[3], matrix[7], matrix[11]], np.deg2rad(-90))
sim.setObjectMatrix(handle_object, -1, matrix)
'''