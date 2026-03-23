.class public Lcom/roblox/client/startup/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/startup/b$c;,
        Lcom/roblox/client/startup/b$a;,
        Lcom/roblox/client/startup/b$b;
    }
.end annotation


# static fields
.field private static l:Lcom/roblox/client/startup/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/roblox/client/startup/b$b;

.field private c:Lcom/roblox/client/startup/e;

.field private d:Lcom/roblox/client/o$c;

.field private e:Z

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/roblox/client/startup/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private final h:Landroid/content/Context;

.field private final i:Lcom/roblox/client/i/f;

.field private final j:Lcom/roblox/client/http/f;

.field private final k:Lcom/roblox/client/startup/d$b;

.field private m:Lcom/roblox/client/http/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/startup/b;->l:Lcom/roblox/client/startup/b;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/roblox/client/i/f;Lcom/roblox/client/startup/d$b;)V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/roblox/client/startup/b$b;->a:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 72
    sget-object v0, Lcom/roblox/client/startup/e;->a:Lcom/roblox/client/startup/e;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->c:Lcom/roblox/client/startup/e;

    .line 74
    sget-object v0, Lcom/roblox/client/o$c;->a:Lcom/roblox/client/o$c;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->d:Lcom/roblox/client/o$c;

    .line 476
    new-instance v0, Lcom/roblox/client/startup/b$8;

    invoke-direct {v0, p0}, Lcom/roblox/client/startup/b$8;-><init>(Lcom/roblox/client/startup/b;)V

    iput-object v0, p0, Lcom/roblox/client/startup/b;->m:Lcom/roblox/client/http/l;

    .line 112
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    const-string v1, "InitHelper created."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/roblox/client/startup/b;->i:Lcom/roblox/client/i/f;

    .line 115
    invoke-static {}, Lcom/roblox/client/http/g;->a()Lcom/roblox/client/http/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/startup/b;->j:Lcom/roblox/client/http/f;

    .line 116
    iput-object p3, p0, Lcom/roblox/client/startup/b;->k:Lcom/roblox/client/startup/d$b;

    .line 118
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/b/d;->b()V

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/b;J)J
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/roblox/client/startup/b;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/roblox/client/startup/b;Lcom/roblox/client/o$c;)Lcom/roblox/client/o$c;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/roblox/client/startup/b;->d:Lcom/roblox/client/o$c;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/startup/b;Lcom/roblox/client/startup/b$b;)Lcom/roblox/client/startup/b$b;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/startup/b;
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/roblox/client/startup/b;->l:Lcom/roblox/client/startup/b;

    if-nez v0, :cond_1

    .line 91
    const-class v1, Lcom/roblox/client/startup/b;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/roblox/client/startup/b;->l:Lcom/roblox/client/startup/b;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/roblox/client/startup/b;

    .line 94
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/startup/b$a;

    invoke-direct {v3}, Lcom/roblox/client/startup/b$a;-><init>()V

    invoke-direct {v0, p0, v2, v3}, Lcom/roblox/client/startup/b;-><init>(Landroid/content/Context;Lcom/roblox/client/i/f;Lcom/roblox/client/startup/d$b;)V

    sput-object v0, Lcom/roblox/client/startup/b;->l:Lcom/roblox/client/startup/b;

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    sget-object v0, Lcom/roblox/client/startup/b;->l:Lcom/roblox/client/startup/b;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()Lcom/roblox/client/startup/c;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/roblox/client/startup/b;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/startup/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Lcom/roblox/client/startup/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/startup/b$c;-><init>(Lcom/roblox/client/startup/b$1;)V

    .line 139
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/roblox/client/startup/b;->f:Ljava/lang/ref/WeakReference;

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/startup/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/startup/c;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/roblox/client/startup/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init FAILURE: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v0, Lcom/roblox/client/startup/b$b;->g:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 457
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/b/d;->a(Z)V

    .line 458
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->a()Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->m()V

    .line 459
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/b;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/roblox/client/startup/b;->e:Z

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/roblox/client/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lcom/roblox/client/locale/c/a;

    invoke-direct {v0}, Lcom/roblox/client/locale/c/a;-><init>()V

    iget-object v1, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    new-instance v2, Lcom/roblox/client/startup/b$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/startup/b$1;-><init>(Lcom/roblox/client/startup/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/locale/c/a;->a(Landroid/content/Context;Lcom/roblox/client/locale/db/a$a;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 235
    const-string v0, "rbx.locale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AndroidAppSettings.isInMultipleLocaleFetchApiRollOut(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "rbx.locale"

    const-string v1, "using new locale api"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Lcom/roblox/client/locale/f;

    invoke-direct {v0}, Lcom/roblox/client/locale/f;-><init>()V

    iget-object v1, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    new-instance v2, Lcom/roblox/client/startup/b$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/startup/b$2;-><init>(Lcom/roblox/client/startup/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/locale/f;->a(Landroid/content/Context;Lcom/roblox/client/locale/f$a;)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->h()V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/startup/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lcom/roblox/client/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/roblox/client/locale/c/a;

    invoke-direct {v0}, Lcom/roblox/client/locale/c/a;-><init>()V

    .line 256
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/locale/a;->b()Lcom/roblox/client/locale/c;

    move-result-object v1

    .line 257
    iget-object v2, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    new-instance v3, Lcom/roblox/client/startup/b$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/roblox/client/startup/b$3;-><init>(Lcom/roblox/client/startup/b;Lcom/roblox/client/locale/c/a;Lcom/roblox/client/locale/c;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/roblox/client/locale/c/a;->a(Landroid/content/Context;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/db/b$a;)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/b/d;->a(Z)V

    .line 270
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->h()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/roblox/client/startup/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/roblox/client/startup/b;->k:Lcom/roblox/client/startup/d$b;

    iget-object v1, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/roblox/client/startup/d$b;->a(Landroid/content/Context;)Lcom/roblox/client/startup/d;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/roblox/client/startup/b$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/startup/b$4;-><init>(Lcom/roblox/client/startup/b;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/startup/d;->a(Lcom/roblox/client/startup/d$c;)V

    .line 305
    invoke-virtual {v0}, Lcom/roblox/client/startup/d;->a()V

    .line 306
    return-void
.end method

.method static synthetic f(Lcom/roblox/client/startup/b;)Lcom/roblox/client/startup/c;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->a()Lcom/roblox/client/startup/c;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/roblox/client/util/b;->b()Lcom/roblox/client/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/client/util/b;->a(Landroid/content/Context;)V

    .line 313
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 316
    const-string v0, "appLaunch"

    invoke-static {v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->j()V

    .line 319
    invoke-static {}, Lcom/roblox/client/b;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/c;->d()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/c;->f()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_1
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->k()V

    .line 330
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/startup/b$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/startup/b$5;-><init>(Lcom/roblox/client/startup/b;)V

    invoke-virtual {v0, v1}, Lcom/roblox/abtesting/a;->d(Lcom/roblox/abtesting/a$a;)V

    .line 337
    invoke-static {}, Lcom/roblox/client/i/d;->a()Lcom/roblox/client/i/d;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/d;->a(Landroid/content/Context;)V

    .line 339
    iget-object v0, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/i/a;->a(Landroid/content/Context;)Lcom/roblox/client/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/a;->a()V

    .line 341
    sget-object v0, Lcom/roblox/client/RobloxSettings;->eventsData:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/roblox/client/startup/b;->j:Lcom/roblox/client/http/f;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->eventsUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/roblox/client/startup/b$6;

    invoke-direct {v3, p0}, Lcom/roblox/client/startup/b$6;-><init>(Lcom/roblox/client/startup/b;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    .line 363
    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->g()V

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->a()Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->k()V

    .line 368
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    const-string v1, "SessionCheck... No saved UserId. Go to the landing screen."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v0, Lcom/roblox/client/startup/b$b;->d:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/startup/b;->g:J

    .line 372
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/b/d;->b(Z)V

    .line 373
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->a()Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->v()V

    .line 413
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    new-instance v2, Lcom/roblox/client/startup/b$7;

    invoke-direct {v2, p0}, Lcom/roblox/client/startup/b$7;-><init>(Lcom/roblox/client/startup/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/h;->a(Landroid/content/Context;Lcom/roblox/client/i/h$f;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->k()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After post login. StartedFor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/startup/b;->c:Lcom/roblox/client/startup/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 419
    sget-object v2, Lcom/roblox/client/startup/b$9;->a:[I

    iget-object v3, p0, Lcom/roblox/client/startup/b;->c:Lcom/roblox/client/startup/e;

    invoke-virtual {v3}, Lcom/roblox/client/startup/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 446
    :goto_0
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/roblox/client/remindernotification/a;->a(Landroid/content/Context;J)V

    .line 451
    :cond_0
    return-void

    .line 421
    :pswitch_0
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/roblox/client/startup/b;->h:Landroid/content/Context;

    .line 424
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 425
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v2, v3, v0, v1}, Lcom/roblox/client/remindernotification/a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 429
    :cond_1
    invoke-static {}, Lcom/roblox/client/i/d;->a()Lcom/roblox/client/i/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/i/d;->c()V

    goto :goto_0

    .line 437
    :pswitch_1
    invoke-static {}, Lcom/roblox/client/i/d;->a()Lcom/roblox/client/i/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/i/d;->b()V

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic i(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->b()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    const-string v1, "AppSettings loaded."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->a()Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->l()V

    .line 465
    return-void
.end method

.method static synthetic j(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->i()V

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/startup/b;)Lcom/roblox/client/i/f;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/roblox/client/startup/b;->i:Lcom/roblox/client/i/f;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    const-string v1, "AppSettings FAILURE"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object v0, Lcom/roblox/client/startup/b$b;->h:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 471
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/b/d;->a(Z)V

    .line 472
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->a()Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->m()V

    .line 473
    return-void
.end method

.method static synthetic l(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->e()V

    return-void
.end method

.method static synthetic m(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->f()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/roblox/client/j/b$a;)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logout: initState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v0, Lcom/roblox/client/startup/b$b;->d:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 218
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/i/h;->a(Landroid/content/Context;Lcom/roblox/client/j/b$a;)V

    .line 219
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logout: callServer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/roblox/client/startup/b$b;->d:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 212
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/i/h;->a(Landroid/content/Context;Z)V

    .line 213
    return-void
.end method

.method public a(Lcom/roblox/client/startup/c;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/startup/b;->f:Ljava/lang/ref/WeakReference;

    .line 123
    return-void
.end method

.method public a(Lcom/roblox/client/startup/e;)V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: initState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-object p1, p0, Lcom/roblox/client/startup/b;->c:Lcom/roblox/client/startup/e;

    .line 161
    iget-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->c:Lcom/roblox/client/startup/b$b;

    if-ne v0, v1, :cond_1

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/startup/b;->g:J

    sub-long/2addr v0, v2

    const-wide v2, 0x7528ad000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    const-string v1, "The app was recently initialized successfully. Done."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->a()Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->v()V

    .line 207
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/roblox/client/startup/b$b;->a:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->a:Lcom/roblox/client/startup/b$b;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->g:Lcom/roblox/client/startup/b$b;

    if-ne v0, v1, :cond_3

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    const-string v1, "Helper starting. Fetching Browser Tracker Id (BTID)"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v0, Lcom/roblox/client/startup/b$b;->b:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 176
    new-instance v0, Lcom/roblox/client/http/post/MobileDeviceInfoRequestBody;

    sget-object v1, Lcom/roblox/client/RobloxSettings;->mDeviceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/roblox/client/http/post/MobileDeviceInfoRequestBody;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/roblox/client/startup/b;->j:Lcom/roblox/client/http/f;

    .line 178
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->deviceIDUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/roblox/client/startup/b;->m:Lcom/roblox/client/http/l;

    .line 177
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/roblox/client/http/a/b;

    invoke-direct {v1}, Lcom/roblox/client/http/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/roblox/client/http/d;->a(Lcom/roblox/client/http/a/d;)V

    .line 183
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->h:Lcom/roblox/client/startup/b$b;

    if-ne v0, v1, :cond_4

    .line 186
    sget-object v0, Lcom/roblox/client/startup/b$b;->b:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 187
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->e()V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->f:Lcom/roblox/client/startup/b$b;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->d:Lcom/roblox/client/startup/b$b;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->e:Lcom/roblox/client/startup/b$b;

    if-ne v0, v1, :cond_6

    .line 192
    :cond_5
    sget-object v0, Lcom/roblox/client/startup/b$b;->b:Lcom/roblox/client/startup/b$b;

    iput-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    .line 193
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->h()V

    goto :goto_0

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/roblox/client/startup/b;->b:Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->i:Lcom/roblox/client/startup/b$b;

    if-ne v0, v1, :cond_9

    .line 196
    iget-object v0, p0, Lcom/roblox/client/startup/b;->d:Lcom/roblox/client/o$c;

    sget-object v1, Lcom/roblox/client/o$c;->c:Lcom/roblox/client/o$c;

    if-ne v0, v1, :cond_7

    .line 197
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->a()Lcom/roblox/client/startup/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/roblox/client/startup/c;->c(Z)V

    goto :goto_0

    .line 198
    :cond_7
    iget-boolean v0, p0, Lcom/roblox/client/startup/b;->e:Z

    if-eqz v0, :cond_8

    .line 199
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->g()V

    goto :goto_0

    .line 201
    :cond_8
    invoke-direct {p0}, Lcom/roblox/client/startup/b;->k()V

    goto/16 :goto_0

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/roblox/client/startup/b;->a:Ljava/lang/String;

    const-string v1, "The initialization must be in progress. Do nothing."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public b(Lcom/roblox/client/startup/c;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/roblox/client/startup/b;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/roblox/client/startup/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/startup/c;

    .line 128
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/startup/b;->f:Ljava/lang/ref/WeakReference;

    .line 132
    :cond_0
    return-void
.end method
