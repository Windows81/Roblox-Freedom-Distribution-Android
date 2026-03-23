.class public Lcom/roblox/client/game/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/game/b$f;,
        Lcom/roblox/client/game/b$e;,
        Lcom/roblox/client/game/b$c;,
        Lcom/roblox/client/game/b$b;,
        Lcom/roblox/client/game/b$d;,
        Lcom/roblox/client/game/b$a;,
        Lcom/roblox/client/game/b$g;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/roblox/client/game/b$a;

.field private g:Lcom/roblox/client/game/b$c;

.field private h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/roblox/engine/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/roblox/client/game/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rbx.appshell"

    .line 32
    iput-object v0, p0, Lcom/roblox/client/game/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->b:Z

    .line 63
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->c:Z

    .line 64
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    .line 65
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->e:Z

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/game/b;->h:Ljava/util/Vector;

    return-void
.end method

.method public static a()Lcom/roblox/client/game/b;
    .locals 1

    .line 59
    sget-object v0, Lcom/roblox/client/game/b$d;->a:Lcom/roblox/client/game/b;

    return-object v0
.end method

.method private a(Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/roblox/engine/b/b;",
            ">;)V"
        }
    .end annotation

    .line 309
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/engine/b/b;

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishPendingReadyEvents() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/roblox/engine/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/roblox/engine/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/roblox/engine/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/roblox/engine/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rbx.appshell"

    invoke-static {v2, v1}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, v0, Lcom/roblox/engine/b/b;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/roblox/engine/b/b;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/roblox/engine/b/b;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/roblox/engine/b/b;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2SendAppEventOnAppReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/game/b;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/roblox/client/game/b;->c:Z

    return p1
.end method

.method private k()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/roblox/client/game/b;->g:Lcom/roblox/client/game/b$c;

    if-eqz v0, :cond_0

    const-string v0, "rbx.appshell"

    const-string v1, "ASMA.resetTask: Cancel the current (running) task..."

    .line 170
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/roblox/client/game/b;->g:Lcom/roblox/client/game/b$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/b$c;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/roblox/client/game/b;->g:Lcom/roblox/client/game/b$c;

    return-void
.end method

.method private l()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/roblox/client/game/b;->i:Lcom/roblox/client/game/b$b;

    if-eqz v0, :cond_0

    .line 338
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setImplementation(Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASMA.setup() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/roblox/client/game/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.appshell"

    invoke-static {v1, v0}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->b:Z

    .line 84
    invoke-static {}, Lcom/roblox/client/u;->as()V

    .line 86
    invoke-static {p1}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeGameGlobalInit()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->at()V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/Surface;)V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "ASMA.restart"

    .line 220
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/roblox/client/game/b;->d()V

    .line 223
    invoke-static {p1}, Lcom/roblox/client/game/e;->a(Landroid/content/Context;)Lcom/roblox/client/game/b$a;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/b$a;)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/roblox/client/game/b;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/game/b$g;)V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "ASMA.loadAllAppSettings()"

    .line 108
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 114
    new-instance v0, Lcom/roblox/client/game/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/roblox/client/game/b$1;-><init>(Lcom/roblox/client/game/b;Landroid/content/Context;Lcom/roblox/client/game/b$g;)V

    invoke-static {p1, v0}, Lcom/roblox/client/b;->a(Landroid/content/Context;Lcom/roblox/client/b$b;)V

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "loadAllAppSettings: Callback must not be null."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/Surface;)V
    .locals 13

    .line 197
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/roblox/client/game/b;->l()V

    .line 200
    invoke-virtual {p0}, Lcom/roblox/client/game/b;->g()Lcom/roblox/client/game/b$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ASMA.start"

    .line 202
    invoke-static {v1, v2}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(ZLjava/lang/String;)V

    .line 204
    iget-object v4, v0, Lcom/roblox/client/game/b$a;->a:Lcom/roblox/engine/jni/model/c;

    iget-object v5, v0, Lcom/roblox/client/game/b$a;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/roblox/client/game/b$a;->d:Ljava/lang/String;

    iget-wide v7, v0, Lcom/roblox/client/game/b$a;->e:J

    iget-boolean v9, v0, Lcom/roblox/client/game/b$a;->f:Z

    iget-object v10, v0, Lcom/roblox/client/game/b$a;->g:Ljava/lang/String;

    iget v11, v0, Lcom/roblox/client/game/b$a;->h:I

    iget-object v12, v0, Lcom/roblox/client/game/b$a;->i:Ljava/lang/String;

    move-object v3, p1

    invoke-static/range {v3 .. v12}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2StartApp(Landroid/view/Surface;Lcom/roblox/engine/jni/model/c;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;F)V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "ASMA.updateWindowHandle"

    .line 251
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p1, p2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2UpdateSurfaceApp(Landroid/view/Surface;F)V

    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/game/b$a;)V
    .locals 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASMA.initializeDataModel: mHasSettings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/roblox/client/game/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInitialized:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/roblox/client/game/b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.appshell"

    invoke-static {v1, v0}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/roblox/client/game/b;->l()V

    const-string v0, "ASMA.initializeDataModel()"

    .line 181
    invoke-static {v1, v0}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/roblox/client/game/b;->f:Lcom/roblox/client/game/b$a;

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    .line 186
    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/roblox/client/u;->t()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/roblox/client/u;->i()Z

    move-result v2

    .line 189
    iget-object v3, p1, Lcom/roblox/client/game/b$a;->a:Lcom/roblox/engine/jni/model/c;

    iget-object p1, p1, Lcom/roblox/client/game/b$a;->b:Lcom/roblox/engine/jni/model/b;

    invoke-static {v3, p1, v0, v1, v2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2Init(Lcom/roblox/engine/jni/model/c;Lcom/roblox/engine/jni/model/b;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/game/b$g;)V
    .locals 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASMA.loadSettings() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/roblox/client/game/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.appshell"

    invoke-static {v1, v0}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->c:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "ASMA.loadSettings() ... skipping because Init already does it!"

    .line 140
    invoke-static {v1, v0}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1, v2}, Lcom/roblox/client/game/b$g;->a(I)V

    :cond_0
    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/game/b;->k()V

    .line 148
    new-instance v0, Lcom/roblox/client/game/b$c;

    new-instance v1, Lcom/roblox/client/game/b$2;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/game/b$2;-><init>(Lcom/roblox/client/game/b;Lcom/roblox/client/game/b$g;)V

    invoke-direct {v0, v1}, Lcom/roblox/client/game/b$c;-><init>(Lcom/roblox/client/game/b$g;)V

    iput-object v0, p0, Lcom/roblox/client/game/b;->g:Lcom/roblox/client/game/b$c;

    .line 159
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/game/b$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/roblox/engine/b/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/game/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0}, Lcom/roblox/client/game/b;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/roblox/client/game/b;->h:Ljava/util/Vector;

    invoke-direct {p0, p1}, Lcom/roblox/client/game/b;->a(Ljava/util/Vector;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/roblox/engine/b/c;)V
    .locals 2

    .line 288
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->b:Z

    if-nez v0, :cond_0

    const-string p1, "rbx.appshell"

    const-string v0, "ASMA.sendAppEventOnGameLoaded: The manager is not yet setup. Ignore."

    .line 289
    invoke-static {p1, v0}, Lcom/roblox/platform/e;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_0
    iget-object v0, p1, Lcom/roblox/engine/b/c;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/roblox/engine/b/c;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/roblox/engine/b/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2SendAppEventOnGameLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/roblox/engine/jni/EngineJavaCallback2;)V
    .locals 1

    .line 332
    new-instance v0, Lcom/roblox/client/game/b$b;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/game/b$b;-><init>(Lcom/roblox/client/game/b;Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    iput-object v0, p0, Lcom/roblox/client/game/b;->i:Lcom/roblox/client/game/b$b;

    .line 333
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setImplementation(Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASMA.onAppReady() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.appshell"

    invoke-static {v0, p1}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 323
    iput-boolean p1, p0, Lcom/roblox/client/game/b;->e:Z

    .line 324
    iget-object p1, p0, Lcom/roblox/client/game/b;->h:Ljava/util/Vector;

    invoke-direct {p0, p1}, Lcom/roblox/client/game/b;->a(Ljava/util/Vector;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 343
    new-instance v0, Lcom/roblox/engine/b/a;

    invoke-direct {v0, p1}, Lcom/roblox/engine/b/a;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/game/b;->a(Lcom/roblox/engine/b/c;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "ASMA.stop"

    .line 229
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2PauseApp()V

    .line 233
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/l;->h()Lcom/roblox/client/game/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 234
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/roblox/client/game/b$g;)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASMA.loadSettingsAndAssets() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/roblox/client/game/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.appshell"

    invoke-static {v1, v0}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/roblox/client/game/b$f;

    const-string v1, "LoadSettingsAndAssets"

    invoke-direct {v0, v1, p1}, Lcom/roblox/client/game/b$f;-><init>(Ljava/lang/String;Lcom/roblox/client/game/b$g;)V

    .line 165
    invoke-virtual {v0}, Lcom/roblox/client/game/b$f;->a()V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "rbx.appshell"

    const-string v1, "ASMA.pause"

    .line 240
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-boolean v2, p0, Lcom/roblox/client/game/b;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "ASMA.pause(): Do nothing in AppBridge refactor!"

    .line 242
    invoke-static {v0, v2}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/l;->h()Lcom/roblox/client/game/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 245
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 258
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "rbx.appshell"

    const-string v1, "ASMA.destroy() ...."

    .line 259
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2DestroyApp()V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/game/b;->f()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    return v0
.end method

.method public f()V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "ASMA.reset()"

    .line 270
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->b:Z

    .line 274
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->d:Z

    .line 275
    iput-boolean v0, p0, Lcom/roblox/client/game/b;->e:Z

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/roblox/client/game/b;->f:Lcom/roblox/client/game/b$a;

    .line 279
    const-class v0, Lcom/roblox/client/game/b$b;

    new-instance v1, Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-direct {v1}, Lcom/roblox/engine/jni/EngineJavaCallback2;-><init>()V

    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->replaceImplementation(Ljava/lang/Class;Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    .line 280
    invoke-direct {p0}, Lcom/roblox/client/game/b;->k()V

    return-void
.end method

.method public g()Lcom/roblox/client/game/b$a;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/roblox/client/game/b;->f:Lcom/roblox/client/game/b$a;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/roblox/client/game/b;->e:Z

    return v0
.end method

.method public i()V
    .locals 0

    .line 328
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeHandleBackPressed()V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "onCookieChanged."

    .line 348
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Lcom/roblox/client/u;->at()V

    return-void
.end method
