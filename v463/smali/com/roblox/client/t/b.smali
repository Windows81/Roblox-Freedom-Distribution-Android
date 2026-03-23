.class public Lcom/roblox/client/t/b;
.super Lcom/roblox/client/t/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/s;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/t/a;-><init>(Landroidx/fragment/app/c;)V

    .line 27
    iput-object p2, p0, Lcom/roblox/client/t/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/i;)V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/roblox/client/t/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/roblox/client/v;

    invoke-direct {v0}, Lcom/roblox/client/v;-><init>()V

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/roblox/client/v;->g()Landroidx/lifecycle/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 58
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showBC"

    const/4 v2, 0x1

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/roblox/client/t/b;->b()I

    move-result v1

    const-string v3, "dialogHeight"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/roblox/client/v;->g(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/roblox/client/u;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/roblox/client/v;->f(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lcom/roblox/client/v;->d()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/roblox/client/v;->a(II)V

    .line 65
    iget-object p1, p0, Lcom/roblox/client/t/b;->a:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->j()Landroidx/fragment/app/g;

    move-result-object p1

    const-string v1, "dialog"

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/v;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/roblox/client/t/b;->b:Ljava/lang/String;

    const-string v0, "nativeMain"

    const-string v1, "buildersClub"

    invoke-static {v0, v1, p1}, Lcom/roblox/client/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
