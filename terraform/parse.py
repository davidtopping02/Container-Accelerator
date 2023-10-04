import json
import sys

#open file and split json into array
f = open("tf.json", "r")
vars = json.load(f)

def main():
    #1 for fail, 0 for pass
    fail = 0

        #["planned_values"]["outputs"]?
    if (vars["variables"]["region"]["value"] == vars["configuration"]["root_module"]["variables"]["region"]["default"]):
        print("region is ", vars["variables"]["region"]["value"])
    else:
        print("region doesn't match")
        fail = 1


    if (vars["variables"]["name"]["value"] == vars["configuration"]["root_module"]["variables"]["name"]["default"]):
        print("cluster_name is ", vars["variables"]["name"]["value"])
    else:
        print("cluster_name doesn't match")
        fail = 1


    if (vars["variables"]["instance_type"]["value"] == vars["configuration"]["root_module"]["variables"]["instance_type"]["default"]):
        print("instance_type is ", vars["variables"]["instance_type"]["value"])
    else:
        print("instance_type doesn't match")
        fail = 1


    if (vars["variables"]["min_size"]["value"] == vars["configuration"]["root_module"]["variables"]["min_size"]["default"]):
        print("min_size is ", vars["variables"]["min_size"]["value"])
    else:
        print("min_size doesn't match")
        fail = 1

    if (vars["variables"]["max_size"]["value"] == vars["configuration"]["root_module"]["variables"]["max_size"]["default"]):
        print("max_size is ", vars["variables"]["max_size"]["value"])
    else:
        print("max_size doesn't match")
        fail = 1

    if (vars["variables"]["desired_size"]["value"] == vars["configuration"]["root_module"]["variables"]["desired_size"]["default"]):
        print("desired_size is ", vars["variables"]["desired_size"]["value"])
    else:
        print("desired_size doesn't match")
        fail = 1


    if (vars["variables"]["eks_worker_instances"]["value"] == vars["configuration"]["root_module"]["variables"]["eks_worker_instances"]["default"]):
        print("eks_worker_instances is ", vars["variables"]["eks_worker_instances"]["value"])
    else:
        print("eks_worker_instances doesn't match")
        fail = 1

    if (vars["variables"]["eks_workers_on_demand"]["value"] == vars["configuration"]["root_module"]["variables"]["eks_workers_on_demand"]["default"]):
        print("eks_workers_on_demand is ", vars["variables"]["eks_workers_on_demand"]["value"])
    else:
        print("eks_workers_on_demand doesn't match")
        fail = 1


    if (vars["variables"]["subnet_mask"]["value"] == vars["configuration"]["root_module"]["variables"]["subnet_mask"]["default"]):
        print("subnet_mask is ", vars["variables"]["subnet_mask"]["value"])
    else:
        print("subnet_mask doesn't match")
        fail = 1


    f.close()
    sys.exit(fail)


main()
