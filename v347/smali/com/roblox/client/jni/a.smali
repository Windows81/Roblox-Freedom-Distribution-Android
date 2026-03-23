.class public Lcom/roblox/client/jni/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/jni/b;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/roblox/engine/jni/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/jni/a;)Lcom/roblox/engine/jni/b$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/roblox/client/jni/a;->b:Lcom/roblox/engine/jni/b$a;

    return-object v0
.end method

.method static synthetic i()Lcom/roblox/client/FragmentGlView;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    return-object v0
.end method

.method private static j()Lcom/roblox/client/FragmentGlView;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    return-object v0
.end method

.method private k()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/roblox/client/jni/a;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/jni/a;->a:Landroid/os/Handler;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/jni/a;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/roblox/client/b;->bg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/jni/a$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/jni/a$3;-><init>(Lcom/roblox/client/jni/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/jni/a$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/jni/a$4;-><init>(Lcom/roblox/client/jni/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 139
    const-string v0, "rbx.engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitGameWithError: errorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/roblox/client/FragmentGlView;->showGameErrorDialogWithErrorId(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 242
    const-string v0, "rbx.engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gameLoadedCallback() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/FragmentGlView;->onGameLoaded(J)V

    .line 244
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    const-string v0, "rbx.purchaseflow"

    const-string v1, "promptNativePurchase. mSingleton==null."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/roblox/client/FragmentGlView;->promptNativePurchase(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(JZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/roblox/client/FragmentGlView;->handleShowKeyboard(JZLjava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public a(JZ[B)V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 106
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/roblox/client/FragmentGlView;->handleShowKeyboard(JZLjava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/engine/jni/b$a;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/roblox/client/jni/a;->b:Lcom/roblox/engine/jni/b$a;

    .line 261
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getInputListener()Lcom/roblox/engine/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/engine/b;->a(Z)V

    .line 172
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/roblox/client/ActivityNativeMain;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 47
    :goto_0
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/roblox/client/b;->bg()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v1}, Lcom/roblox/client/FragmentGlView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/jni/a$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/roblox/client/jni/a$1;-><init>(Lcom/roblox/client/jni/a;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    :goto_1
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 72
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v1}, Lcom/roblox/client/FragmentGlView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/jni/a$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/roblox/client/jni/a$2;-><init>(Lcom/roblox/client/jni/a;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->handleHideKeyboard()V

    .line 116
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 190
    const-string v0, "rbx.engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenOrientationChanged: newOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->shouldRespectDatamodelOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 200
    :pswitch_0
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->setRequestedOrientation(I)V

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->setRequestedOrientation(I)V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->setRequestedOrientation(I)V

    goto :goto_0

    .line 209
    :pswitch_3
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->setRequestedOrientation(I)V

    goto :goto_0

    .line 212
    :pswitch_4
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->setRequestedOrientation(I)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 248
    const-string v0, "rbx.engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLuaTextBoxChangedCallback() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/FragmentGlView;->onLuaTextBoxChanged(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/roblox/client/jni/a;->k()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/jni/a$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/jni/a$6;-><init>(Lcom/roblox/client/jni/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "rbx.engine"

    const-string v1, "exitGame:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentGlView;->handleGameExitedEvent(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "rbx.engine"

    const-string v1, "gameDidLeave:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentGlView;->tryToFinishActivity(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "rbx.engine"

    const-string v1, "onLeaveGameFinished:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/roblox/client/jni/a;->k()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/jni/a$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/jni/a$5;-><init>(Lcom/roblox/client/jni/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlAPI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/k;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/roblox/client/jni/a;->j()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->onLuaTextBoxPositionChanged()V

    .line 256
    return-void
.end method
