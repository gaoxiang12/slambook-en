## First Glance of Visual SLAM

### Goal of Study

1.  Understand what modules a visual SLAM framework consists of, and what task each module carries out.
2.  Set up the programming environment, and prepare for development and experiments.
3.  Understand how to compile and run a program under Linux. If there is a problem, how to debug it.
4.  Master the basic use of cmake.

This lecture summarizes the structure of a visual SLAM system as an outline of subsequent chapters. Practice part introduces the fundamentals of environment setup and program development. We will complete a "Hello SLAM" program at the end.

### Meet "Little Carrot"

Suppose we assembled a robot called "Little Carrot", as shown in the following sketch:

![Little Carrot](https://github.com/gaoxiang12/slambook-en/blob/master/resources/whatIsSLAM/carrot.pdf)

Although it looks a bit like the Android robot, it has nothing to do with the Android system. We put a laptop into its trunk (so that we can debug programs at any time). So, what is our robot capable to do?

We hope Little Carrot has the ability of **moving autonomously**. Although there are "robots" placed statically on desktops, capable of chatting with people and playing music, a tablet computer nowadays can deliver the same tasks. As a robot, we hope Little Carrot can move freely in a room. No matter where we say hello, it can come right away.

First of all, a robot needs wheels and motors to move, so we installed wheels under Little Carrot (gait control for humanoid robots is very complicated, which we will not be considering here). Now with the wheels, the robot is able to move, but without an effective control system, Little Carrot does not know where a target of action is, and it can do nothing but wander around blindly. Even worse, it may hit a wall and cause damage. In order to avoid this from happening, we installed cameras on its head, with the intuition that such a robot **should look similar to human** - we can tell that from the sketch. With eyes, brains and limbs, human can walk freely and explore any environment, so we (somehow naively) think that our robot should be able to achieve it too. In order to make Little Carrot able to explore a room, it needs to know at least two things:

1. Where am I? - positioning
2. what is the surrounding environment like? - map building

"Positioning" and "map building", can be seen as perception in both directions: inward and outward. As a well-rounded robot, Little Carrot need not only to understand its own **state** (i.e. location), but also the external **environment** (i.e. map). Of course, there are many ways to solve these two problems. For example, we can lay guiding rails on the floor of the room, or stick markers such as pictures containing QR code on the wall, or mount radio positioning devices on the table. If you are outdoor, you can also install a positioning component (like the one in a cell phone or a car) on the head of Little Carrot. With these devices, can we claim that the positioning problem has been resolved? Let's categorize these sensors (see \ autoref {fig: sensors}) into two classes.

images of sensors

The first class are **non-intrusive** sensors which are completely self-contained inside a robot, such as wheel encoders, cameras, laser scanners, etc. They do not assume an cooperative environment. The other class are **intrusive** sensors depending on a prepared environment, such as the above mentioned guiding rails, QR code stickers, etc. Intrusive sensors can usually locate a robot directly, solving the positioning problem in a simple and effective manner. However, since they require changes to the environment, the scope of use is often limited. For example, what if there is no GPS signal, or guiding rails cannot be laid? What should we do in those cases?

We can see that the intrusive sensors place certain **constraints** to the external environment. Only when these constraints are met, a localization system based on them can function properly. If the constraints cannot be met, positioning cannot be carried out anymore. Therefore, although this type of sensor is simple and reliable, they do not provide a general solution. In contrast, non-intrusive sensors, such as laser scanners, cameras, wheel encoders, Inertial Measurement Units (IMUs), etc., can only observe indirect physical quantities rather than the direct locations. For example, a wheel encoder measures angle at which a wheel rotates, an IMU measures angular velocity and acceleration of a movement, a camera or a laser scanner observe the external environment in a certain form. We have to apply algorithms to infer positions from these indirect observations. While this sounds like a roundabout tactic, the more obvious benefit is that it does not make any demands on the environment, making it possible for this positioning framework to be applied to an unknown environment.

Looking back at the SLAM definitions discussed earlier, we emphasized an **unknown environment** in SLAM problems. In theory, we should not presume the environment where Little Carrot will used (but in reality we will have a rough range, such as indoor or outdoor), which means that we can not assume that the external sensors like GPS can work smoothly. Therefore, the use of portable non-intrusive sensors to achieve SLAM is our main focus. In particular, when talking about visual SLAM, we generally refer to the using of **cameras** to solve the positioning and map building problems.

Visual SLAM is the main subject of this book, so we are particularly interested in what the Little Carrot's eyes can do. The cameras used in SLAM is different from the commonly seen SLR cameras. It is often much simpler and does not carry expensive lens. It shoots at the surrounding environment at a certain rate, forming a continuous video stream. An ordinary camera can capture images at 30 frames per second, while high-speed cameras shoots faster. The camera can be divided into three categories: Monocular, Stereo and RGB-D, as shown by \ autoref {fig: camera}. Intuitively, a monocular camera has only one camera, a stereo camera has two. The principle of a RGB-D camera is more complex, in addition to being able to collect color images, it can also measure the distance of the scene from the camera for each pixel. RGB-D cameras usually carry multiple cameras, and may adopt a variety of different working principles. In the fifth lecture, we will detail their working principles, and the reader just need an intuitive impression for now. In addition, there are also specialty and emerging camera types can be applied to SLAM, such as panorama camera [Pretto2011], event camera [Rueckauer2016]. Although they are occasionally seen in SLAM applications, so far they have not become mainstream. From the appearance we can infer that Little Carrot seems to carry a stereo camera (it will be quite scary if it is monocular, imagine it...).


