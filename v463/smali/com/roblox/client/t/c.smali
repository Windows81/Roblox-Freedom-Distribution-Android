.class public Lcom/roblox/client/t/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/t/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/s;


# direct methods
.method public constructor <init>(Lcom/roblox/client/s;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/roblox/client/t/c;->a:Lcom/roblox/client/s;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/s/c$e;->a:Lcom/roblox/client/s/c$e;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/s/c;->a(Landroid/app/Activity;Lcom/roblox/client/s/c$e;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/t/c;Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/roblox/client/t/c;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/i;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/roblox/client/t/c;->a:Lcom/roblox/client/s;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "logout"

    .line 52
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/roblox/client/t/c;->a:Lcom/roblox/client/s;

    invoke-virtual {v0}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/roblox/client/m;

    invoke-direct {v1}, Lcom/roblox/client/m;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/m;->a(II)V

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {v1}, Lcom/roblox/client/m;->g()Landroidx/lifecycle/g;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 63
    :cond_1
    new-instance p1, Lcom/roblox/client/t/c$1;

    invoke-direct {p1, p0, v0}, Lcom/roblox/client/t/c$1;-><init>(Lcom/roblox/client/t/c;Landroidx/fragment/app/c;)V

    invoke-virtual {v1, p1}, Lcom/roblox/client/m;->a(Lcom/roblox/client/m$a;)V

    .line 71
    invoke-virtual {v0}, Landroidx/fragment/app/c;->j()Landroidx/fragment/app/g;

    move-result-object p1

    const-string v0, "dialog"

    invoke-virtual {v1, p1, v0}, Lcom/roblox/client/m;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    return-void
.end method
