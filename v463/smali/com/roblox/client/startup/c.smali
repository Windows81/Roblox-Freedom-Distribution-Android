.class public Lcom/roblox/client/startup/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/startup/c$b;,
        Lcom/roblox/client/startup/c$a;
    }
.end annotation


# static fields
.field private static i:Lcom/roblox/client/startup/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/roblox/client/startup/c$a;

.field private c:Lcom/roblox/client/startup/e;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/roblox/client/startup/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private final f:Landroid/content/Context;

.field private final g:Lcom/roblox/client/s/f;

.field private final h:Lcom/roblox/client/http/f;

.field private j:Lcom/roblox/client/http/l;

.field private k:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/roblox/client/s/f;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InitHelper"

    .line 70
    iput-object v0, p0, Lcom/roblox/client/startup/c;->a:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/roblox/client/startup/c$a;->a:Lcom/roblox/client/startup/c$a;

    iput-object v1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 89
    sget-object v1, Lcom/roblox/client/startup/e;->a:Lcom/roblox/client/startup/e;

    iput-object v1, p0, Lcom/roblox/client/startup/c;->c:Lcom/roblox/client/startup/e;

    .line 529
    new-instance v1, Lcom/roblox/client/startup/c$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/startup/c$9;-><init>(Lcom/roblox/client/startup/c;)V

    iput-object v1, p0, Lcom/roblox/client/startup/c;->j:Lcom/roblox/client/http/l;

    .line 719
    new-instance v1, Lcom/roblox/client/startup/c$11;

    invoke-direct {v1, p0}, Lcom/roblox/client/startup/c$11;-><init>(Lcom/roblox/client/startup/c;)V

    iput-object v1, p0, Lcom/roblox/client/startup/c;->k:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

    const-string v1, "InitHelper created."

    .line 116
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/roblox/client/startup/c;->g:Lcom/roblox/client/s/f;

    .line 119
    invoke-static {}, Lcom/roblox/client/http/g;->a()Lcom/roblox/client/http/f;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/startup/c;->h:Lcom/roblox/client/http/f;

    .line 121
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/analytics/g;->b()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/c;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/roblox/client/startup/c;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/roblox/client/startup/c;Lcom/roblox/client/startup/c$a;)Lcom/roblox/client/startup/c$a;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/startup/c;
    .locals 3

    .line 103
    sget-object v0, Lcom/roblox/client/startup/c;->i:Lcom/roblox/client/startup/c;

    if-nez v0, :cond_1

    .line 104
    const-class v0, Lcom/roblox/client/startup/c;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/roblox/client/startup/c;->i:Lcom/roblox/client/startup/c;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/roblox/client/startup/c;

    .line 107
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/startup/c;-><init>(Landroid/content/Context;Lcom/roblox/client/s/f;)V

    sput-object v1, Lcom/roblox/client/startup/c;->i:Lcom/roblox/client/startup/c;

    .line 109
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 111
    :cond_1
    :goto_0
    sget-object p0, Lcom/roblox/client/startup/c;->i:Lcom/roblox/client/startup/c;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->h()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/c;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/roblox/client/startup/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/startup/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/roblox/client/startup/c;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;)V

    .line 622
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 623
    new-instance v1, Lcom/roblox/client/startup/c$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/startup/c$10;-><init>(Lcom/roblox/client/startup/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->i()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/startup/c;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/roblox/client/startup/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->o()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init FAILURE: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InitHelper"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object p1, Lcom/roblox/client/startup/c$a;->h:Lcom/roblox/client/startup/c$a;

    iput-object p1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 490
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/roblox/client/analytics/g;->a(Z)V

    .line 491
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/startup/d;->r()V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/startup/c;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init FAILURE: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InitHelper"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object p1, Lcom/roblox/client/startup/c$a;->h:Lcom/roblox/client/startup/c$a;

    iput-object p1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 498
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/roblox/client/analytics/g;->a(Z)V

    .line 499
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/startup/d;->s()V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->k()V

    return-void
.end method

.method private f()Lcom/roblox/client/startup/d;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/roblox/client/startup/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    new-instance v0, Lcom/roblox/client/startup/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/startup/c$b;-><init>(Lcom/roblox/client/startup/c$1;)V

    .line 146
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/roblox/client/startup/c;->d:Ljava/lang/ref/WeakReference;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/startup/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/startup/d;

    return-object v0
.end method

.method static synthetic f(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->q()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 215
    invoke-static {}, Lcom/roblox/client/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/roblox/client/locale/d/a;

    invoke-direct {v0}, Lcom/roblox/client/locale/d/a;-><init>()V

    iget-object v1, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    new-instance v2, Lcom/roblox/client/startup/c$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/startup/c$1;-><init>(Lcom/roblox/client/startup/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/locale/d/a;->a(Landroid/content/Context;Lcom/roblox/client/locale/db/a$a;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->h()V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->r()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.locale"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "using new locale api"

    .line 230
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StartGetLocales"

    .line 231
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a:Ljava/lang/String;

    const-string v1, "nativeGetLocale"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/roblox/client/locale/i;

    invoke-direct {v1}, Lcom/roblox/client/locale/i;-><init>()V

    iget-object v2, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    new-instance v3, Lcom/roblox/client/startup/c$4;

    invoke-direct {v3, p0, v0}, Lcom/roblox/client/startup/c$4;-><init>(Lcom/roblox/client/startup/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/locale/i;->a(Landroid/content/Context;Lcom/roblox/client/locale/i$a;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->i()V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->g()V

    return-void
.end method

.method static synthetic i(Lcom/roblox/client/startup/c;)Lcom/roblox/client/startup/d;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object p0

    return-object p0
.end method

.method private i()V
    .locals 4

    .line 247
    invoke-static {}, Lcom/roblox/client/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/roblox/client/locale/d/a;

    invoke-direct {v0}, Lcom/roblox/client/locale/d/a;-><init>()V

    .line 251
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/locale/b;->b()Lcom/roblox/client/locale/f;

    move-result-object v1

    const-string v2, "StartLoadStringUpdates"

    .line 252
    invoke-static {v2}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    new-instance v3, Lcom/roblox/client/startup/c$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/roblox/client/startup/c$5;-><init>(Lcom/roblox/client/startup/c;Lcom/roblox/client/locale/d/a;Lcom/roblox/client/locale/f;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/roblox/client/locale/d/a;->a(Landroid/content/Context;Lcom/roblox/client/locale/f;Lcom/roblox/client/locale/db/b$a;)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/g;->a(Z)V

    .line 267
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->o()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 4

    const-string v0, "InitHelper"

    const-string v1, "getAllAppSettings:..."

    .line 272
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-object v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a:Ljava/lang/String;

    const-string v1, "nativeClientSettings"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    new-instance v3, Lcom/roblox/client/startup/c$6;

    invoke-direct {v3, p0, v0}, Lcom/roblox/client/startup/c$6;-><init>(Lcom/roblox/client/startup/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/game/b;->a(Landroid/content/Context;Lcom/roblox/client/game/b$g;)V

    return-void
.end method

.method static synthetic j(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->p()V

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/startup/c;)Lcom/roblox/client/s/f;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/roblox/client/startup/c;->g:Lcom/roblox/client/s/f;

    return-object p0
.end method

.method private k()V
    .locals 5

    const-string v0, "InitHelper"

    const-string v1, "getBrowserTrackerId:..."

    .line 312
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StartRequestDeviceInfo"

    .line 314
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/roblox/client/http/post/MobileDeviceInfoRequestBody;

    sget-object v1, Lcom/roblox/client/u;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/roblox/client/http/post/MobileDeviceInfoRequestBody;-><init>(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/roblox/client/startup/c;->h:Lcom/roblox/client/http/f;

    .line 317
    invoke-static {}, Lcom/roblox/client/u;->ai()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/startup/c;->j:Lcom/roblox/client/http/l;

    const/4 v4, 0x0

    .line 316
    invoke-interface {v1, v2, v0, v4, v3}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/roblox/client/http/a/b;

    invoke-direct {v1}, Lcom/roblox/client/http/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/roblox/client/http/d;->a(Lcom/roblox/client/http/a/d;)V

    .line 322
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 329
    invoke-static {}, Lcom/roblox/client/ae/b;->b()Lcom/roblox/client/ae/b;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/client/ae/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic l(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->m()V

    return-void
.end method

.method private m()V
    .locals 3

    const-string v0, "InitHelper"

    const-string v1, "doAfterFetchBrowserTrackerId:..."

    .line 333
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "appLaunch"

    .line 335
    invoke-static {v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/roblox/client/b;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/u;->f()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/j;->d()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/roblox/platform/http/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/u;->f()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/j;->f()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {v0, v1, v2}, Lcom/roblox/platform/http/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_1
    invoke-static {}, Lcom/roblox/client/b;->bx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/client/j;->a(Landroid/content/Context;)V

    .line 354
    :cond_2
    invoke-static {}, Lcom/roblox/engine/f;->a()Lcom/roblox/engine/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/engine/f;->b(Landroid/content/Context;)V

    .line 356
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->n()V

    return-void
.end method

.method static synthetic m(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->l()V

    return-void
.end method

.method private n()V
    .locals 3

    .line 365
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/b;->cu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->r()V

    :cond_1
    const-string v0, "StartCheckABTestEnrollments"

    .line 369
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a:Ljava/lang/String;

    const-string v1, "nativeBtidABTest"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/startup/c$7;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/startup/c$7;-><init>(Lcom/roblox/client/startup/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/roblox/abtesting/a;->d(Lcom/roblox/abtesting/a$a;)V

    .line 380
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cK()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/roblox/client/startup/c;->a()V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/s/a;->a(Landroid/content/Context;)Lcom/roblox/client/s/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/a;->a()V

    return-void
.end method

.method static synthetic n(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->u()V

    return-void
.end method

.method private o()V
    .locals 3

    .line 388
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->p()V

    .line 390
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    const-string v1, "InitHelper"

    if-eqz v0, :cond_0

    const-string v0, "SessionCheck... New startup flow. Go directly to the Main screen."

    .line 391
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-object v0, Lcom/roblox/client/startup/c$a;->d:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 393
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->v()V

    return-void

    .line 397
    :cond_0
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SessionCheck... No saved UserId. Go to the landing screen."

    .line 398
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v0, Lcom/roblox/client/startup/c$a;->e:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/startup/c;->e:J

    .line 401
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/g;->b(Z)V

    .line 402
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->u()V

    return-void

    :cond_1
    const-string v0, "StartSessionCheck"

    .line 405
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    new-instance v2, Lcom/roblox/client/startup/c$8;

    invoke-direct {v2, p0}, Lcom/roblox/client/startup/c$8;-><init>(Lcom/roblox/client/startup/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/h;->a(Landroid/content/Context;Lcom/roblox/client/s/h$d;)V

    return-void
.end method

.method private p()V
    .locals 4

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After post login. StartedFor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->c:Lcom/roblox/client/startup/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitHelper"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 452
    sget-object v2, Lcom/roblox/client/startup/c$3;->a:[I

    iget-object v3, p0, Lcom/roblox/client/startup/c;->c:Lcom/roblox/client/startup/e;

    invoke-virtual {v3}, Lcom/roblox/client/startup/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 470
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->s()Lcom/roblox/client/s/d;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/roblox/client/s/d;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 454
    :pswitch_1
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/ad/c;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    .line 457
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 458
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-static {v2, v3, v0, v1}, Lcom/roblox/client/remindernotification/a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->s()Lcom/roblox/client/s/d;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/roblox/client/s/d;->c(Landroid/content/Context;)V

    .line 479
    :goto_0
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/ad/c;->i()Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/roblox/client/remindernotification/a;->a(Landroid/content/Context;J)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private q()V
    .locals 10

    const-string v0, "InitHelper"

    const-string v1, "AppSettings loaded."

    .line 503
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v2

    .line 506
    invoke-static {}, Lcom/roblox/client/b;->N()I

    move-result v3

    .line 507
    invoke-static {}, Lcom/roblox/client/b;->O()I

    move-result v4

    .line 508
    invoke-static {}, Lcom/roblox/client/b;->P()I

    move-result v5

    .line 509
    invoke-static {}, Lcom/roblox/client/b;->Q()I

    move-result v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 510
    invoke-static {}, Lcom/roblox/client/b;->L()I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 511
    invoke-static {}, Lcom/roblox/client/b;->R()I

    move-result v9

    .line 505
    invoke-virtual/range {v2 .. v9}, Lcom/roblox/client/b/b;->a(IIIIJI)V

    .line 513
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->q()V

    return-void
.end method

.method private r()V
    .locals 2

    const-string v0, "InitHelper"

    const-string v1, "AppSettings FAILURE"

    .line 517
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget-object v0, Lcom/roblox/client/startup/c$a;->i:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 520
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/g;->a(Z)V

    .line 521
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->r()V

    return-void
.end method

.method private s()Lcom/roblox/client/s/d;
    .locals 1

    .line 525
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/l;->f()Lcom/roblox/client/s/d;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 5

    const-string v0, "InitHelper"

    const-string v1, "startAppBridge:..."

    .line 604
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/game/e;->a(Landroid/content/Context;)Lcom/roblox/client/game/b$a;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/roblox/client/game/b$a;->a()Lcom/roblox/engine/jni/model/b;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeSetDeviceInfo(Lcom/roblox/engine/jni/model/b;)V

    .line 609
    sget-object v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a:Ljava/lang/String;

    const-string v1, "startupController"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/startup/c;->l:Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/roblox/client/startup/c;->k:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setAppBridgeNotificationListener(Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;)V

    .line 613
    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {}, Lcom/roblox/client/u;->t()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-static {}, Lcom/roblox/client/u;->i()Z

    move-result v2

    .line 616
    sget-object v3, Lcom/roblox/client/u;->c:Ljava/lang/String;

    .line 617
    invoke-static {}, Lcom/roblox/client/u;->R()Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-static {v0, v1, v2, v3, v4}, Lcom/roblox/engine/jni/NativeAppBridgeInterface;->nativeAppBridgeAppStart(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 10

    .line 690
    invoke-static {}, Lcom/roblox/client/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetCookiesForDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCookiesFromEngine: nativeGetCookiesForDomain Got Cookies = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InitHelper"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ";"

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 700
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v5, v0, v4

    .line 701
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\t"

    .line 702
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 703
    array-length v7, v6

    const/4 v8, 0x6

    const/4 v9, 0x7

    if-eq v7, v9, :cond_1

    array-length v7, v6

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 714
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCookiesFromEngine: Invalid cookie format: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 704
    :cond_1
    :goto_1
    aget-object v5, v6, v3

    .line 705
    invoke-static {}, Lcom/roblox/client/u;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x5

    .line 706
    aget-object v5, v6, v5

    .line 707
    array-length v7, v6

    if-ne v7, v9, :cond_2

    aget-object v6, v6, v8

    goto :goto_2

    :cond_2
    const-string v6, ""

    .line 708
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; Domain="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/roblox/client/u;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 709
    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object v6

    invoke-static {}, Lcom/roblox/client/u;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/roblox/platform/http/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCookiesFromEngine: Set Cookies : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->s()Lcom/roblox/client/s/d;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;ZLcom/roblox/client/t/c$a;)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logout: callServer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", initState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitHelper"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/roblox/client/startup/c$a;->e:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 211
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/s/h;->a(Landroid/content/Context;ZLcom/roblox/client/t/c$a;)V

    return-void
.end method

.method public a(Lcom/roblox/client/startup/d;)V
    .locals 1

    .line 125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/startup/c;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/roblox/client/startup/e;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/roblox/client/startup/c;->c:Lcom/roblox/client/startup/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDidLoginEventFromLua: initState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitHelper"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sget-object v0, Lcom/roblox/client/startup/c$a;->d:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 739
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->u()V

    .line 741
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/g;->b(Z)V

    .line 742
    sget-object v0, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a:Ljava/lang/String;

    const-string v1, "nativePostLogin"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/startup/c;->f:Landroid/content/Context;

    new-instance v3, Lcom/roblox/client/startup/c$2;

    invoke-direct {v3, p0, v0}, Lcom/roblox/client/startup/c$2;-><init>(Lcom/roblox/client/startup/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/roblox/client/s/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/s/h$c;)V

    return-void
.end method

.method public b(Lcom/roblox/client/startup/d;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/roblox/client/startup/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/startup/d;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/roblox/client/startup/c;->d:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDidSignUpEventFromLua: initState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InitHelper"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    sget-object p1, Lcom/roblox/client/startup/e;->e:Lcom/roblox/client/startup/e;

    invoke-virtual {p0, p1}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/e;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v1, Lcom/roblox/client/startup/c$a;->a:Lcom/roblox/client/startup/c$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 6

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: initState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", StartedFor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->c:Lcom/roblox/client/startup/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitHelper"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->d:Lcom/roblox/client/startup/c$a;

    if-ne v0, v2, :cond_1

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/roblox/client/startup/c;->e:J

    sub-long/2addr v2, v4

    const-wide v4, 0x7528ad000L

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const-string v0, "The app was recently initialized successfully. Done."

    .line 173
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->u()V

    return-void

    .line 177
    :cond_0
    sget-object v0, Lcom/roblox/client/startup/c$a;->a:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->a:Lcom/roblox/client/startup/c$a;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->i:Lcom/roblox/client/startup/c$a;

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->c:Lcom/roblox/client/startup/c$a;

    if-ne v0, v2, :cond_3

    .line 186
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->q()V

    goto :goto_2

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->h:Lcom/roblox/client/startup/c$a;

    if-ne v0, v2, :cond_4

    const-string v0, "Helper starting. Fetching Browser Tracker Id (BTID)"

    .line 191
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lcom/roblox/client/startup/c$a;->b:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 194
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->k()V

    goto :goto_2

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->g:Lcom/roblox/client/startup/c$a;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->e:Lcom/roblox/client/startup/c$a;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->f:Lcom/roblox/client/startup/c$a;

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "The initialization must be in progress. Do nothing."

    .line 203
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 199
    :cond_6
    :goto_0
    sget-object v0, Lcom/roblox/client/startup/c$a;->b:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 200
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->o()V

    goto :goto_2

    .line 182
    :cond_7
    :goto_1
    sget-object v0, Lcom/roblox/client/startup/c$a;->b:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 183
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->j()V

    :cond_8
    :goto_2
    return-void
.end method

.method public d()V
    .locals 3

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startV2: initState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", StartedFor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->c:Lcom/roblox/client/startup/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitHelper"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->d:Lcom/roblox/client/startup/c$a;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->f:Lcom/roblox/client/startup/c$a;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->e:Lcom/roblox/client/startup/c$a;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->c:Lcom/roblox/client/startup/c$a;

    if-ne v0, v2, :cond_1

    const-string v0, "App Settings have been loaded. Start the new Phase-2 AppBridge..."

    .line 590
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sget-object v0, Lcom/roblox/client/startup/c$a;->b:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 592
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->t()V

    goto :goto_1

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    sget-object v2, Lcom/roblox/client/startup/c$a;->h:Lcom/roblox/client/startup/c$a;

    if-ne v0, v2, :cond_2

    .line 595
    sget-object v0, Lcom/roblox/client/startup/c$a;->b:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 596
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->t()V

    goto :goto_1

    :cond_2
    const-string v0, "The initialization must be in progress. Do nothing."

    .line 599
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "The initialization is done or unauthorized. Go to Main screen."

    .line 586
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->v()V

    :goto_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginRequestFromLua: initState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitHelper"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v0, Lcom/roblox/client/startup/c$a;->f:Lcom/roblox/client/startup/c$a;

    iput-object v0, p0, Lcom/roblox/client/startup/c;->b:Lcom/roblox/client/startup/c$a;

    .line 731
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/g;->b(Z)V

    .line 732
    invoke-direct {p0}, Lcom/roblox/client/startup/c;->f()Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->u()V

    return-void
.end method
