.class public Lcom/roblox/client/login/d;
.super Lcom/roblox/client/components/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/login/d$c;,
        Lcom/roblox/client/login/d$d;,
        Lcom/roblox/client/login/d$e;,
        Lcom/roblox/client/login/d$b;,
        Lcom/roblox/client/login/d$a;,
        Lcom/roblox/client/login/d$f;,
        Lcom/roblox/client/login/d$g;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private d:Lcom/roblox/client/login/d$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/roblox/client/login/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/login/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p2}, Lcom/roblox/client/components/d;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/roblox/client/login/d;->a:Landroid/content/Context;

    .line 52
    iput-wide p3, p0, Lcom/roblox/client/login/d;->b:J

    .line 54
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/roblox/abtesting/a;->b(J)V

    .line 57
    new-instance v0, Lcom/roblox/client/login/d$f;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/login/d$f;-><init>(Lcom/roblox/client/login/d;Lcom/roblox/client/login/d$1;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/components/d$a;)V

    .line 58
    new-instance v0, Lcom/roblox/client/login/d$a;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/login/d$a;-><init>(Lcom/roblox/client/login/d;Lcom/roblox/client/login/d$1;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/components/d$a;)V

    .line 59
    new-instance v0, Lcom/roblox/client/login/d$b;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/login/d$b;-><init>(Lcom/roblox/client/login/d;Lcom/roblox/client/login/d$1;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/components/d$a;)V

    .line 60
    new-instance v0, Lcom/roblox/client/login/d$e;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/login/d$e;-><init>(Lcom/roblox/client/login/d;Lcom/roblox/client/login/d$1;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/components/d$a;)V

    .line 61
    new-instance v0, Lcom/roblox/client/login/d$c;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/d$c;-><init>(Lcom/roblox/client/login/d;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/components/d$a;)V

    .line 62
    new-instance v0, Lcom/roblox/client/login/d$d;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/login/d$d;-><init>(Lcom/roblox/client/login/d;Lcom/roblox/client/login/d$1;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/components/d$a;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/roblox/client/login/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/roblox/client/login/d;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/roblox/client/login/d$g;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/roblox/client/login/d;->d:Lcom/roblox/client/login/d$g;

    .line 47
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/roblox/client/login/d;->d:Lcom/roblox/client/login/d$g;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/roblox/client/login/d;->d:Lcom/roblox/client/login/d$g;

    invoke-interface {v0}, Lcom/roblox/client/login/d$g;->a()V

    .line 70
    :cond_0
    return-void
.end method
