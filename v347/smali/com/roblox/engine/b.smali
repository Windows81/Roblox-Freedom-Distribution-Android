.class public Lcom/roblox/engine/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/roblox/engine/c$a;
.implements Lcom/roblox/engine/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/engine/b$c;,
        Lcom/roblox/engine/b$b;,
        Lcom/roblox/engine/b$d;,
        Lcom/roblox/engine/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/SurfaceView;

.field private b:Z

.field private c:Landroid/view/GestureDetector;

.field private d:Lcom/roblox/engine/b$b;

.field private e:Lcom/roblox/engine/c;

.field private f:Lcom/roblox/engine/d;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/roblox/engine/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/hardware/SensorManager;

.field private i:Landroid/hardware/Sensor;

.field private j:Landroid/hardware/Sensor;

.field private k:Landroid/view/OrientationEventListener;

.field private l:Z

.field private m:F

.field private n:F

.field private final o:[F

.field private final p:[F

.field private final q:[F

.field private final r:[F

.field private final s:[F

.field private final t:Landroid/util/SparseArray;

.field private final u:Landroid/os/Handler;

.field private v:Landroid/hardware/input/InputManager;

.field private w:Landroid/app/Activity;

.field private x:Lcom/roblox/engine/b$a;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/roblox/engine/b$a;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/roblox/engine/b;->a:Landroid/view/SurfaceView;

    .line 119
    iput-boolean v3, p0, Lcom/roblox/engine/b;->b:Z

    .line 120
    iput-object v2, p0, Lcom/roblox/engine/b;->c:Landroid/view/GestureDetector;

    .line 121
    iput-object v2, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    .line 122
    iput-object v2, p0, Lcom/roblox/engine/b;->e:Lcom/roblox/engine/c;

    .line 123
    iput-object v2, p0, Lcom/roblox/engine/b;->f:Lcom/roblox/engine/d;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    .line 125
    iput-object v2, p0, Lcom/roblox/engine/b;->h:Landroid/hardware/SensorManager;

    .line 126
    iput-object v2, p0, Lcom/roblox/engine/b;->i:Landroid/hardware/Sensor;

    .line 127
    iput-object v2, p0, Lcom/roblox/engine/b;->j:Landroid/hardware/Sensor;

    .line 128
    iput-object v2, p0, Lcom/roblox/engine/b;->k:Landroid/view/OrientationEventListener;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/engine/b;->l:Z

    .line 131
    iput v1, p0, Lcom/roblox/engine/b;->m:F

    .line 132
    iput v1, p0, Lcom/roblox/engine/b;->n:F

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/roblox/engine/b;->o:[F

    .line 135
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/roblox/engine/b;->p:[F

    .line 136
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/roblox/engine/b;->q:[F

    .line 138
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/roblox/engine/b;->r:[F

    .line 139
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/roblox/engine/b;->s:[F

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/b;->t:Landroid/util/SparseArray;

    .line 142
    new-instance v0, Lcom/roblox/engine/b$c;

    invoke-direct {v0, p0, p0}, Lcom/roblox/engine/b$c;-><init>(Lcom/roblox/engine/b;Lcom/roblox/engine/b;)V

    iput-object v0, p0, Lcom/roblox/engine/b;->u:Landroid/os/Handler;

    .line 154
    iput-object p2, p0, Lcom/roblox/engine/b;->a:Landroid/view/SurfaceView;

    .line 155
    iput-object p1, p0, Lcom/roblox/engine/b;->w:Landroid/app/Activity;

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/engine/b;->b:Z

    .line 157
    iput-object p3, p0, Lcom/roblox/engine/b;->x:Lcom/roblox/engine/b$a;

    .line 158
    iput-boolean p4, p0, Lcom/roblox/engine/b;->y:Z

    .line 160
    iget-boolean v0, p0, Lcom/roblox/engine/b;->b:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lcom/roblox/engine/b$b;

    invoke-direct {v0, p0, v2}, Lcom/roblox/engine/b$b;-><init>(Lcom/roblox/engine/b;Lcom/roblox/engine/b$1;)V

    iput-object v0, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    .line 163
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/roblox/engine/b;->c:Landroid/view/GestureDetector;

    .line 164
    new-instance v0, Lcom/roblox/engine/c;

    invoke-direct {v0, p0}, Lcom/roblox/engine/c;-><init>(Lcom/roblox/engine/c$a;)V

    iput-object v0, p0, Lcom/roblox/engine/b;->e:Lcom/roblox/engine/c;

    .line 165
    new-instance v0, Lcom/roblox/engine/d;

    invoke-direct {v0, p0}, Lcom/roblox/engine/d;-><init>(Lcom/roblox/engine/d$a;)V

    iput-object v0, p0, Lcom/roblox/engine/b;->f:Lcom/roblox/engine/d;

    .line 169
    :cond_0
    invoke-direct {p0, p2}, Lcom/roblox/engine/b;->a(Landroid/view/SurfaceView;)V

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/roblox/engine/b;->h:Landroid/hardware/SensorManager;

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/roblox/engine/b;->v:Landroid/hardware/input/InputManager;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/roblox/engine/b;->h:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/engine/b;->i:Landroid/hardware/Sensor;

    .line 179
    iget-object v0, p0, Lcom/roblox/engine/b;->h:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/engine/b;->j:Landroid/hardware/Sensor;

    .line 181
    iget-object v0, p0, Lcom/roblox/engine/b;->j:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 183
    invoke-static {v3}, Lcom/roblox/engine/jni/NativeInputInterface;->nativeSetGyroscopeEnabled(Z)V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/roblox/engine/b;->i:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 188
    invoke-static {v3}, Lcom/roblox/engine/jni/NativeInputInterface;->nativeSetAccelerometerEnabled(Z)V

    .line 192
    :cond_3
    invoke-direct {p0}, Lcom/roblox/engine/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    new-instance v0, Lcom/roblox/engine/b$1;

    invoke-direct {v0, p0, p1, v4}, Lcom/roblox/engine/b$1;-><init>(Lcom/roblox/engine/b;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/roblox/engine/b;->k:Landroid/view/OrientationEventListener;

    .line 201
    iget-object v0, p0, Lcom/roblox/engine/b;->k:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/roblox/engine/b;->k:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/roblox/engine/b;->k:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 261
    :cond_4
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/roblox/engine/b;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    .line 357
    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 360
    iget-object v1, p0, Lcom/roblox/engine/b;->t:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    invoke-direct {p0, p1}, Lcom/roblox/engine/b;->b(I)V

    .line 363
    invoke-static {p1}, Lcom/roblox/engine/jni/NativeInputInterface;->nativeGamepadConnectEvent(I)V

    .line 365
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 366
    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 367
    return-void
.end method

.method private a(Landroid/view/SurfaceView;)V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/roblox/engine/b;->u:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 535
    new-instance v0, Lcom/roblox/engine/b$2;

    invoke-direct {v0, p0}, Lcom/roblox/engine/b$2;-><init>(Lcom/roblox/engine/b;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 606
    new-instance v0, Lcom/roblox/engine/b$3;

    invoke-direct {v0, p0}, Lcom/roblox/engine/b$3;-><init>(Lcom/roblox/engine/b;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 724
    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/b;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/roblox/engine/b;->d()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/b;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/roblox/engine/b;->a(I)V

    return-void
.end method

.method public static a(I[F)[F
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 1034
    new-array v0, v7, [F

    .line 1036
    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    .line 1042
    aget-object v1, v1, p0

    .line 1043
    aget v2, v1, v5

    int-to-float v2, v2

    aget v3, v1, v4

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aput v2, v0, v5

    .line 1044
    aget v2, v1, v6

    int-to-float v2, v2

    aget v1, v1, v7

    aget v1, p1, v1

    mul-float/2addr v1, v2

    aput v1, v0, v6

    .line 1045
    aget v1, p1, v4

    aput v1, v0, v4

    .line 1047
    return-object v0

    .line 1036
    :array_0
    .array-data 4
        0x1
        -0x1
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method

.method static synthetic b(Lcom/roblox/engine/b;)F
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v0

    return v0
.end method

.method private b(I)V
    .locals 9

    .prologue
    const/16 v8, 0x16

    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 371
    invoke-direct {p0, p1}, Lcom/roblox/engine/b;->c(I)[Z

    move-result-object v3

    .line 373
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 375
    :goto_0
    if-ge v1, v7, :cond_1

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 378
    packed-switch v1, :pswitch_data_0

    .line 399
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 401
    aget-boolean v5, v3, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 380
    :pswitch_0
    const/16 v0, 0x60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 381
    :pswitch_1
    const/16 v0, 0x61

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 382
    :pswitch_2
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 383
    :pswitch_3
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 385
    :pswitch_4
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 386
    :pswitch_5
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 387
    :pswitch_6
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 388
    :pswitch_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 390
    :pswitch_8
    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 391
    :pswitch_9
    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 392
    :pswitch_a
    const/16 v0, 0x6a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 393
    :pswitch_b
    const/16 v0, 0x6b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 395
    :pswitch_c
    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 396
    :pswitch_d
    const/16 v0, 0x6c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 405
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 409
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {v0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice$MotionRange;

    .line 428
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 432
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 433
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 437
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 438
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 440
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativeSetGamepadSupportedKey(IIZ)V

    .line 442
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 444
    :cond_3
    return-void

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/roblox/engine/b;->y:Z

    return v0
.end method

.method private c()F
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/roblox/engine/b;->x:Lcom/roblox/engine/b$a;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/roblox/engine/b;->x:Lcom/roblox/engine/b$a;

    invoke-interface {v0}, Lcom/roblox/engine/b$a;->getCurrentScreenDensity()F

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method static synthetic c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/engine/b;->t:Landroid/util/SparseArray;

    return-object v0
.end method

.method private c(I)[Z
    .locals 7

    .prologue
    const/16 v6, 0x13

    const/16 v2, 0xe

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 447
    new-array v0, v2, [Z

    .line 449
    new-array v2, v2, [I

    .line 451
    const/16 v3, 0x60

    aput v3, v2, v1

    .line 452
    const/16 v3, 0x61

    aput v3, v2, v5

    .line 453
    const/4 v3, 0x2

    const/16 v4, 0x63

    aput v4, v2, v3

    .line 454
    const/4 v3, 0x3

    const/16 v4, 0x64

    aput v4, v2, v3

    .line 456
    const/4 v3, 0x4

    aput v6, v2, v3

    .line 457
    const/4 v3, 0x5

    const/16 v4, 0x14

    aput v4, v2, v3

    .line 458
    const/4 v3, 0x6

    const/16 v4, 0x15

    aput v4, v2, v3

    .line 459
    const/4 v3, 0x7

    const/16 v4, 0x16

    aput v4, v2, v3

    .line 461
    const/16 v3, 0x8

    const/16 v4, 0x67

    aput v4, v2, v3

    .line 462
    const/16 v3, 0x9

    const/16 v4, 0x66

    aput v4, v2, v3

    .line 463
    const/16 v3, 0xa

    const/16 v4, 0x6a

    aput v4, v2, v3

    .line 464
    const/16 v3, 0xb

    const/16 v4, 0x6b

    aput v4, v2, v3

    .line 466
    const/16 v3, 0xc

    const/16 v4, 0x6d

    aput v4, v2, v3

    .line 467
    const/16 v3, 0xd

    const/16 v4, 0x6c

    aput v4, v2, v3

    .line 469
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_1

    .line 470
    iget-object v1, p0, Lcom/roblox/engine/b;->v:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v0

    .line 484
    :cond_0
    return-object v0

    .line 479
    :cond_1
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 480
    aput-boolean v5, v0, v1

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v0, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v3, p0, Lcom/roblox/engine/b;->w:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 350
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v3, p0, Lcom/roblox/engine/b;->w:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 317
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 318
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 320
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 323
    iget v3, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v3, v5, :cond_1

    .line 349
    :goto_1
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativeUpdateScreenOrientation(I)V

    goto :goto_0

    .line 328
    :cond_1
    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_4

    .line 332
    :cond_2
    if-ne v4, v6, :cond_3

    move v0, v1

    .line 333
    goto :goto_1

    :cond_3
    move v0, v2

    .line 335
    goto :goto_1

    .line 342
    :cond_4
    if-ne v4, v0, :cond_5

    move v0, v1

    .line 343
    goto :goto_1

    :cond_5
    move v0, v2

    .line 345
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/roblox/engine/b;->h:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 280
    return-void
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 995
    const/4 v0, 0x0

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassSwipeGesture(IFF)V

    .line 996
    return-void
.end method

.method public a(Lcom/roblox/engine/c;)V
    .locals 7

    .prologue
    .line 1012
    invoke-virtual {p1}, Lcom/roblox/engine/c;->a()F

    move-result v1

    .line 1013
    invoke-virtual {p1}, Lcom/roblox/engine/c;->b()I

    move-result v0

    .line 1014
    invoke-virtual {p1}, Lcom/roblox/engine/c;->c()Landroid/graphics/Point;

    move-result-object v4

    .line 1015
    invoke-virtual {p1}, Lcom/roblox/engine/c;->d()Landroid/graphics/Point;

    move-result-object v6

    .line 1017
    const/4 v2, 0x0

    iget v3, v4, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v6, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static/range {v0 .. v6}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassRotateGesture(IFFFFFF)V

    .line 1019
    return-void
.end method

.method public a(Lcom/roblox/engine/d;)V
    .locals 8

    .prologue
    .line 1023
    invoke-virtual {p1}, Lcom/roblox/engine/d;->c()Landroid/graphics/Point;

    move-result-object v4

    .line 1024
    invoke-virtual {p1}, Lcom/roblox/engine/d;->d()Landroid/graphics/Point;

    move-result-object v6

    .line 1025
    invoke-virtual {p1}, Lcom/roblox/engine/d;->b()F

    move-result v1

    .line 1026
    invoke-virtual {p1}, Lcom/roblox/engine/d;->a()I

    move-result v0

    .line 1027
    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v7

    .line 1028
    const/4 v2, 0x0

    iget v3, v4, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, v6, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-static/range {v0 .. v6}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassPinchGesture(IFFFFFF)V

    .line 1030
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-boolean v0, p0, Lcom/roblox/engine/b;->l:Z

    if-nez v0, :cond_0

    .line 298
    iput-boolean p1, p0, Lcom/roblox/engine/b;->l:Z

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/roblox/engine/b;->l:Z

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/roblox/engine/b;->h:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/roblox/engine/b;->j:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 304
    iget-object v0, p0, Lcom/roblox/engine/b;->h:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/roblox/engine/b;->i:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 306
    :cond_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v2

    div-float/2addr v1, v2

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v3

    div-float/2addr v2, v3

    .line 496
    iget v3, p0, Lcom/roblox/engine/b;->m:F

    sub-float v3, v1, v3

    .line 497
    iget v4, p0, Lcom/roblox/engine/b;->n:F

    sub-float v4, v2, v4

    .line 499
    iput v1, p0, Lcom/roblox/engine/b;->m:F

    .line 500
    iput v2, p0, Lcom/roblox/engine/b;->n:F

    .line 502
    iget v1, p0, Lcom/roblox/engine/b;->m:F

    iget v2, p0, Lcom/roblox/engine/b;->n:F

    invoke-static {v1, v2, v3, v4}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassMouseMove(FFFF)V

    .line 527
    :cond_1
    :goto_0
    return v0

    .line 506
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 508
    iget v1, p0, Lcom/roblox/engine/b;->m:F

    iget v2, p0, Lcom/roblox/engine/b;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v3}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassMouseButton(FFZI)V

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_4

    .line 513
    iget v2, p0, Lcom/roblox/engine/b;->m:F

    iget v3, p0, Lcom/roblox/engine/b;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v1, v4}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassMouseButton(FFZI)V

    goto :goto_0

    .line 516
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 518
    iget v1, p0, Lcom/roblox/engine/b;->m:F

    iget v2, p0, Lcom/roblox/engine/b;->n:F

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassMouseWheel(FFF)V

    goto :goto_0

    .line 521
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 527
    goto :goto_0
.end method

.method public b(II)V
    .locals 3

    .prologue
    .line 999
    const/4 v0, 0x1

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassSwipeGesture(IFF)V

    .line 1000
    return-void
.end method

.method public c(II)V
    .locals 3

    .prologue
    .line 1003
    const/4 v0, 0x2

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassSwipeGesture(IFF)V

    .line 1004
    return-void
.end method

.method public d(II)V
    .locals 3

    .prologue
    .line 1007
    const/4 v0, 0x3

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassSwipeGesture(IFF)V

    .line 1008
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    const v6, 0x3e4ccccc    # 0.19999999f

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1053
    iget-object v0, p0, Lcom/roblox/engine/b;->w:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1054
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1056
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1058
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Lcom/roblox/engine/b;->a(I[F)[F

    move-result-object v0

    .line 1060
    iget-object v1, p0, Lcom/roblox/engine/b;->o:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 1061
    iget-object v0, p0, Lcom/roblox/engine/b;->p:[F

    iget-object v1, p0, Lcom/roblox/engine/b;->o:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 1062
    iget-object v0, p0, Lcom/roblox/engine/b;->p:[F

    iget-object v1, p0, Lcom/roblox/engine/b;->q:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 1065
    iget-object v0, p0, Lcom/roblox/engine/b;->q:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/roblox/engine/b;->q:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/roblox/engine/b;->q:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/roblox/engine/b;->o:[F

    aget v3, v3, v4

    iget-object v4, p0, Lcom/roblox/engine/b;->o:[F

    aget v4, v4, v5

    iget-object v5, p0, Lcom/roblox/engine/b;->o:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    iget-object v6, p0, Lcom/roblox/engine/b;->o:[F

    aget v6, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassGyroscopeChange(FFFFFFF)V

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/roblox/engine/b;->r:[F

    iget-object v2, p0, Lcom/roblox/engine/b;->r:[F

    aget v2, v2, v4

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    aput v2, v1, v4

    .line 1076
    iget-object v1, p0, Lcom/roblox/engine/b;->r:[F

    iget-object v2, p0, Lcom/roblox/engine/b;->r:[F

    aget v2, v2, v7

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 1077
    iget-object v1, p0, Lcom/roblox/engine/b;->r:[F

    iget-object v2, p0, Lcom/roblox/engine/b;->r:[F

    aget v2, v2, v5

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 1080
    iget-object v1, p0, Lcom/roblox/engine/b;->s:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/roblox/engine/b;->r:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v4

    .line 1081
    iget-object v1, p0, Lcom/roblox/engine/b;->s:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/roblox/engine/b;->r:[F

    aget v3, v3, v7

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 1082
    iget-object v1, p0, Lcom/roblox/engine/b;->s:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/roblox/engine/b;->r:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    aput v2, v1, v5

    .line 1084
    iget-object v1, p0, Lcom/roblox/engine/b;->s:[F

    invoke-static {v0, v1}, Lcom/roblox/engine/b;->a(I[F)[F

    move-result-object v1

    .line 1085
    iget-object v2, p0, Lcom/roblox/engine/b;->r:[F

    invoke-static {v0, v2}, Lcom/roblox/engine/b;->a(I[F)[F

    move-result-object v0

    .line 1088
    aget v2, v1, v7

    neg-float v2, v2

    aget v3, v1, v5

    aget v1, v1, v4

    invoke-static {v2, v3, v1}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassAccelerometerChange(FFF)V

    .line 1089
    aget v1, v0, v7

    neg-float v1, v1

    aget v2, v0, v5

    neg-float v2, v2

    aget v0, v0, v4

    invoke-static {v1, v2, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassGravityChange(FFF)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/4 v4, -0x1

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 727
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_2

    .line 728
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-nez v0, :cond_1

    .line 730
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 731
    if-lez v0, :cond_0

    .line 732
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v2

    div-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v6, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 733
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 734
    iget v1, p0, Lcom/roblox/engine/b;->m:F

    iget v2, p0, Lcom/roblox/engine/b;->n:F

    invoke-static {v1, v2, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassMouseWheel(FFF)V

    .line 865
    :cond_0
    :goto_0
    return v7

    .line 740
    :cond_1
    invoke-virtual {p0, p2}, Lcom/roblox/engine/b;->a(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 744
    :cond_2
    iget-boolean v0, p0, Lcom/roblox/engine/b;->b:Z

    if-nez v0, :cond_3

    move v7, v6

    .line 745
    goto :goto_0

    .line 748
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 751
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 754
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 756
    packed-switch v0, :pswitch_data_0

    .line 820
    :cond_4
    :goto_1
    :pswitch_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 822
    iget-object v0, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v8, v6

    :goto_2
    if-ge v8, v10, :cond_d

    .line 823
    iget-object v0, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 824
    iget-object v1, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/roblox/engine/b$d;

    .line 827
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->c()I

    move-result v1

    if-ne v1, v11, :cond_a

    .line 828
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    .line 840
    :goto_3
    iget-object v2, p0, Lcom/roblox/engine/b;->x:Lcom/roblox/engine/b$a;

    invoke-interface {v2}, Lcom/roblox/engine/b$a;->isSurfaceCreated()Z

    move-result v2

    .line 841
    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    .line 842
    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v1

    .line 843
    iget-object v2, p0, Lcom/roblox/engine/b;->a:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v4, v2

    .line 844
    iget-object v2, p0, Lcom/roblox/engine/b;->a:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v5, v1

    .line 846
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->a()F

    move-result v1

    iput v1, v3, Lcom/roblox/engine/b$d;->a:F

    .line 847
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->b()F

    move-result v1

    iput v1, v3, Lcom/roblox/engine/b$d;->b:F

    .line 849
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->a()F

    move-result v1

    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->b()F

    move-result v2

    .line 850
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->c()I

    move-result v3

    .line 849
    invoke-static/range {v0 .. v5}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassInput(IFFIII)V

    .line 822
    :cond_5
    :goto_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 760
    :pswitch_1
    new-instance v0, Lcom/roblox/engine/b$d;

    invoke-direct {v0, p0}, Lcom/roblox/engine/b$d;-><init>(Lcom/roblox/engine/b;)V

    .line 761
    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v3

    .line 762
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/roblox/engine/b$d;->a(F)V

    .line 763
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/roblox/engine/b$d;->b(F)V

    .line 764
    invoke-virtual {v0, v6}, Lcom/roblox/engine/b$d;->a(I)V

    .line 765
    iget-object v1, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    move v1, v6

    .line 770
    :goto_5
    iget-object v0, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 773
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 775
    iget-object v0, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/engine/b$d;

    .line 776
    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v4

    .line 777
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    div-float/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/roblox/engine/b$d;->a(F)V

    .line 778
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/roblox/engine/b$d;->b(F)V

    .line 779
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/roblox/engine/b$d;->a(I)V

    .line 781
    iget-object v3, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    iget v3, v3, Lcom/roblox/engine/b$b;->a:I

    if-ne v2, v3, :cond_6

    .line 782
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/roblox/engine/b$d;->a()F

    move-result v3

    invoke-virtual {v0}, Lcom/roblox/engine/b$d;->b()F

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassLongPressGesture(IFF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_6
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 793
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/engine/b$d;

    .line 795
    if-nez v0, :cond_8

    .line 797
    invoke-direct {p0}, Lcom/roblox/engine/b;->c()F

    move-result v0

    .line 799
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    div-float/2addr v3, v0

    .line 800
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    div-float v0, v1, v0

    .line 801
    iget-object v1, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    iget v1, v1, Lcom/roblox/engine/b$b;->a:I

    if-ne v2, v1, :cond_7

    .line 802
    iget-object v1, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    iput v4, v1, Lcom/roblox/engine/b$b;->a:I

    .line 803
    invoke-static {v11, v3, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassLongPressGesture(IFF)V

    goto/16 :goto_1

    .line 804
    :cond_7
    iget-object v0, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    iget v0, v0, Lcom/roblox/engine/b$b;->b:I

    if-ne v2, v0, :cond_4

    .line 805
    iget-object v0, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    invoke-virtual {v0}, Lcom/roblox/engine/b$b;->a()V

    goto/16 :goto_1

    .line 808
    :cond_8
    invoke-virtual {v0, v11}, Lcom/roblox/engine/b$d;->a(I)V

    .line 809
    iget-object v1, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    iget v1, v1, Lcom/roblox/engine/b$b;->a:I

    if-ne v2, v1, :cond_9

    .line 810
    iget-object v1, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    iput v4, v1, Lcom/roblox/engine/b$b;->a:I

    .line 811
    invoke-virtual {v0}, Lcom/roblox/engine/b$d;->a()F

    move-result v1

    invoke-virtual {v0}, Lcom/roblox/engine/b$d;->b()F

    move-result v0

    invoke-static {v11, v1, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassLongPressGesture(IFF)V

    goto/16 :goto_1

    .line 812
    :cond_9
    iget-object v0, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    iget v0, v0, Lcom/roblox/engine/b$b;->b:I

    if-ne v2, v0, :cond_4

    .line 813
    iget-object v0, p0, Lcom/roblox/engine/b;->d:Lcom/roblox/engine/b$b;

    invoke-virtual {v0}, Lcom/roblox/engine/b$b;->a()V

    goto/16 :goto_1

    .line 829
    :cond_a
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->c()I

    move-result v1

    iget v2, v3, Lcom/roblox/engine/b$d;->c:I

    if-ne v1, v2, :cond_b

    .line 830
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->a()F

    move-result v1

    iget v2, v3, Lcom/roblox/engine/b$d;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->b()F

    move-result v1

    iget v2, v3, Lcom/roblox/engine/b$d;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    move v1, v6

    .line 832
    goto/16 :goto_3

    .line 834
    :cond_b
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->c()I

    move-result v1

    if-ne v1, v7, :cond_f

    iget v1, v3, Lcom/roblox/engine/b$d;->c:I

    if-nez v1, :cond_f

    .line 835
    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->a()F

    move-result v1

    iget v2, v3, Lcom/roblox/engine/b$d;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    invoke-virtual {v3}, Lcom/roblox/engine/b$d;->b()F

    move-result v1

    iget v2, v3, Lcom/roblox/engine/b$d;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    move v1, v6

    .line 836
    goto/16 :goto_3

    .line 851
    :cond_c
    if-nez v2, :cond_5

    .line 852
    const-string v0, "rbx.input"

    const-string v1, "nativePassInput not ready or already passed event"

    invoke-static {v0, v1}, Lcom/roblox/platform/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 856
    :cond_d
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 857
    iget-object v2, p0, Lcom/roblox/engine/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_7

    .line 861
    :cond_e
    iget-object v0, p0, Lcom/roblox/engine/b;->f:Lcom/roblox/engine/d;

    invoke-virtual {v0, p2}, Lcom/roblox/engine/d;->a(Landroid/view/MotionEvent;)Z

    .line 862
    iget-object v0, p0, Lcom/roblox/engine/b;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 863
    iget-object v0, p0, Lcom/roblox/engine/b;->e:Lcom/roblox/engine/c;

    invoke-virtual {v0, p2}, Lcom/roblox/engine/c;->a(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 784
    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_f
    move v1, v7

    goto/16 :goto_3

    .line 756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
