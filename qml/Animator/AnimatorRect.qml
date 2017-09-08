import QtQuick 2.4

Rectangle {
    width: 100
    height: 100
    color: "green"

    XAnimator on x {
        from: 0
        to: 350
        duration: 4000
        loops: Animator.Infinite
    }

    YAnimator on y {
        from: 0;
        to: 350;
        duration: 4000
        loops: Animator.Infinite
    }

    ScaleAnimator on scale {
        from: 0.1
        to: 1
        duration: 4000
        loops: Animator.Infinite
    }

    RotationAnimator on rotation {
        from: 0
        to: 360
        duration: 4000
        loops: Animator.Infinite
    }

    OpacityAnimator on opacity {
        from: 0
        to: 1
        duration: 4000
        loops: Animator.Infinite
    }
}
