.class public Lcom/roblox/client/locale/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/roblox/client/locale/c/a;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/locale/c/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/locale/c/a;->b(Landroid/content/Context;Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/roblox/client/locale/c/a;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/roblox/client/locale/c/a;->a:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/roblox/client/b;->l()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()J
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Landroid/content/Context;Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/locale/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p2, p3}, Lcom/roblox/client/locale/c/a;->a(Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/roblox/client/locale/c/a;->a(Landroid/content/Context;Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/db/b$a;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/roblox/client/locale/db/d;->a()Lcom/roblox/client/locale/db/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/roblox/client/locale/c/a;->a(Landroid/content/Context;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/db/d;Lcom/roblox/client/locale/db/b$a;)V

    .line 72
    return-void
.end method

.method a(Landroid/content/Context;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/db/d;Lcom/roblox/client/locale/db/b$a;)V
    .locals 2

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p3, p1, p2, p4}, Lcom/roblox/client/locale/db/d;->a(Landroid/content/Context;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/db/b$a;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "rbx.locale"

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/locale/db/a$a;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/roblox/client/locale/db/d;->a()Lcom/roblox/client/locale/db/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/roblox/client/locale/c/a;->a(Landroid/content/Context;Lcom/roblox/client/locale/db/d;Lcom/roblox/client/locale/db/a$a;)V

    .line 55
    return-void
.end method

.method a(Landroid/content/Context;Lcom/roblox/client/locale/db/d;Lcom/roblox/client/locale/db/a$a;)V
    .locals 2

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/roblox/client/util/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "rbx.locale"

    const-string v1, "App updated"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Lcom/roblox/client/util/h;->d(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p2, p1, p3}, Lcom/roblox/client/locale/db/d;->a(Landroid/content/Context;Lcom/roblox/client/locale/db/a$a;)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "rbx.locale"

    const-string v1, "No app upgrade"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {p3}, Lcom/roblox/client/locale/db/a$a;->a()V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/locale/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/roblox/client/locale/db/d;->a()Lcom/roblox/client/locale/db/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/locale/db/d;->a(Landroid/content/Context;Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V

    .line 91
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 27
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/roblox/client/locale/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/locale/c/a;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/roblox/client/locale/c/a;->a:J

    .line 29
    new-instance v0, Lcom/roblox/client/locale/a/b;

    invoke-direct {v0}, Lcom/roblox/client/locale/a/b;-><init>()V

    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/locale/a;->b()Lcom/roblox/client/locale/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/locale/c/a$1;

    invoke-direct {v2, p0, p1}, Lcom/roblox/client/locale/c/a$1;-><init>(Lcom/roblox/client/locale/c/a;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/roblox/client/locale/a/b;->a(Landroid/content/Context;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/e;)V

    .line 36
    :cond_1
    return-void
.end method

.method public a(Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/locale/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/roblox/client/locale/h;->a()Lcom/roblox/client/locale/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/locale/h;->a(Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V

    .line 86
    return-void
.end method
