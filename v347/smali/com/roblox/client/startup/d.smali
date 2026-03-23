.class public Lcom/roblox/client/startup/d;
.super Lcom/roblox/client/components/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/startup/d$a;,
        Lcom/roblox/client/startup/d$d;,
        Lcom/roblox/client/startup/d$c;,
        Lcom/roblox/client/startup/d$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/roblox/client/startup/d$c;

.field private final b:Landroid/content/Context;

.field private c:Lcom/roblox/client/o$c;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, "PostDeviceInit"

    invoke-direct {p0, v0}, Lcom/roblox/client/components/d;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/roblox/client/o$c;->a:Lcom/roblox/client/o$c;

    iput-object v0, p0, Lcom/roblox/client/startup/d;->c:Lcom/roblox/client/o$c;

    .line 35
    iput-object p1, p0, Lcom/roblox/client/startup/d;->b:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/roblox/client/startup/d$d;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/startup/d$d;-><init>(Lcom/roblox/client/startup/d;Lcom/roblox/client/startup/d$1;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/d;->a(Lcom/roblox/client/components/d$a;)V

    .line 38
    new-instance v0, Lcom/roblox/client/startup/d$a;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/startup/d$a;-><init>(Lcom/roblox/client/startup/d;Lcom/roblox/client/startup/d$1;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/d;->a(Lcom/roblox/client/components/d$a;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/startup/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/roblox/client/startup/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/startup/d;Lcom/roblox/client/o$c;)Lcom/roblox/client/o$c;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/roblox/client/startup/d;->c:Lcom/roblox/client/o$c;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/startup/d;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/roblox/client/startup/d;->d:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/roblox/client/startup/d$c;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/roblox/client/startup/d;->a:Lcom/roblox/client/startup/d$c;

    .line 43
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "PostDeviceInitHandler"

    const-string v1, "doAllTasksComplete:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/roblox/client/startup/d;->a:Lcom/roblox/client/startup/d$c;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/roblox/client/startup/d;->a:Lcom/roblox/client/startup/d$c;

    iget-object v1, p0, Lcom/roblox/client/startup/d;->c:Lcom/roblox/client/o$c;

    iget-boolean v2, p0, Lcom/roblox/client/startup/d;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/startup/d$c;->a(Lcom/roblox/client/o$c;Z)V

    .line 51
    :cond_0
    return-void
.end method
