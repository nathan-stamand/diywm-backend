proj_1 = Project.create(key: '1', name: 'Gnome Alone', blog: 'Quick intro to making your own gnomes!', materials: 'pieces of a broken gnome, glue', total_time: 64)
proj_2 = Project.create(key: '2', name: 'Pecan Air: Starring Nick Cage', blog: 'Procedure for making a plane out of a pecan!', materials: 'an old pecan (shelled), cardstock, gluestick', total_time: 38)

step_1 = proj_1.steps.create(key: '3', header: 'step 1: glue gnome together', time: 64, directions: 'just drench that thing in glue')
step_2 = proj_2.steps.create(key: '4', header: 'Get Off The Ground', time: 15, directions: 'clean your pecan with warm water. allow to dry for 10 min')
step_3 = proj_2.steps.create(key: '5', header: 'Take Flight!', time: 15, directions: 'cut or rip the paper into something that looks like plane wings')
step_4 = proj_2.steps.create(key: '6', header: 'Take That, Gravity!', time: 8, directions: 'glue those bad boys to your clean pecan and throw it around!')