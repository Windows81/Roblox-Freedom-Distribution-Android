.class public Lcom/google/android/gms/internal/ads/aoh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/aoh$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/apr;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/ads/anz;

.field private final d:Lcom/google/android/gms/internal/ads/any;

.field private final e:Lcom/google/android/gms/internal/ads/aqp;

.field private final f:Lcom/google/android/gms/internal/ads/awb;

.field private final g:Lcom/google/android/gms/internal/ads/gl;

.field private final h:Lcom/google/android/gms/internal/ads/q;

.field private final i:Lcom/google/android/gms/internal/ads/awc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/anz;Lcom/google/android/gms/internal/ads/any;Lcom/google/android/gms/internal/ads/aqp;Lcom/google/android/gms/internal/ads/awb;Lcom/google/android/gms/internal/ads/gl;Lcom/google/android/gms/internal/ads/q;Lcom/google/android/gms/internal/ads/awc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aoh;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aoh;->c:Lcom/google/android/gms/internal/ads/anz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aoh;->d:Lcom/google/android/gms/internal/ads/any;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aoh;->e:Lcom/google/android/gms/internal/ads/aqp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aoh;->f:Lcom/google/android/gms/internal/ads/awb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aoh;->g:Lcom/google/android/gms/internal/ads/gl;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aoh;->h:Lcom/google/android/gms/internal/ads/q;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/aoh;->i:Lcom/google/android/gms/internal/ads/awc;

    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/ads/apr;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lcom/google/android/gms/internal/ads/aoh;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v0, "ClientApi class is not an instance of IBinder"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mj;->e(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aps;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/apr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/mj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aoh;)Lcom/google/android/gms/internal/ads/apr;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aoh;->b()Lcom/google/android/gms/internal/ads/apr;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/aoh$a;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/internal/ads/aoh$a",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->a()Lcom/google/android/gms/internal/ads/ly;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ly;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "Google Play Services is not available"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mj;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->a()Lcom/google/android/gms/internal/ads/ly;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ly;->e(Landroid/content/Context;)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->a()Lcom/google/android/gms/internal/ads/ly;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ly;->d(Landroid/content/Context;)I

    move-result v4

    if-le v3, v4, :cond_5

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aro;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/aro;->de:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/aoh$a;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/aoh$a;->c()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/aoh$a;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/aoh$a;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->a()Lcom/google/android/gms/internal/ads/ly;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ly;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aoh;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/aoh;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/aoh;)Lcom/google/android/gms/internal/ads/anz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoh;->c:Lcom/google/android/gms/internal/ads/anz;

    return-object v0
.end method

.method private final b()Lcom/google/android/gms/internal/ads/apr;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aoh;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoh;->a:Lcom/google/android/gms/internal/ads/apr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoh;->a()Lcom/google/android/gms/internal/ads/apr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aoh;->a:Lcom/google/android/gms/internal/ads/apr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoh;->a:Lcom/google/android/gms/internal/ads/apr;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/aoh;)Lcom/google/android/gms/internal/ads/any;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoh;->d:Lcom/google/android/gms/internal/ads/any;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/aoh;)Lcom/google/android/gms/internal/ads/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoh;->h:Lcom/google/android/gms/internal/ads/q;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;)Lcom/google/android/gms/internal/ads/apa;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/aol;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aol;-><init>(Lcom/google/android/gms/internal/ads/aoh;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/aoh;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/aoh$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apa;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/r;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/mj;->c(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/aon;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aon;-><init>(Lcom/google/android/gms/internal/ads/aoh;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aoh;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/aoh$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/r;

    return-object v0

    :cond_0
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
