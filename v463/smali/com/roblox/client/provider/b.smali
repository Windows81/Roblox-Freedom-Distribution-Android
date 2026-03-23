.class public Lcom/roblox/client/provider/b;
.super Lcom/roblox/client/provider/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/f/d;


# direct methods
.method public constructor <init>(Lcom/roblox/client/f/d;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/roblox/client/provider/a;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/roblox/client/provider/b;->a:Lcom/roblox/client/f/d;

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 6

    const-string v0, "base_url_param"

    const-string v1, "default_base_url_param"

    const-string v2, "settings_param"

    const-string v3, "user_agent_param"

    const-string v4, "default_user_agent_param"

    const-string v5, "dev_rpc_ip_port_override"

    .line 16
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "base_url_param"

    .line 23
    invoke-virtual {p0, v0}, Lcom/roblox/client/provider/b;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 24
    iget-object p1, p0, Lcom/roblox/client/provider/b;->a:Lcom/roblox/client/f/d;

    invoke-virtual {p1}, Lcom/roblox/client/f/d;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "default_base_url_param"

    .line 26
    invoke-virtual {p0, v0}, Lcom/roblox/client/provider/b;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 27
    iget-object p1, p0, Lcom/roblox/client/provider/b;->a:Lcom/roblox/client/f/d;

    invoke-virtual {p1}, Lcom/roblox/client/f/d;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "settings_param"

    .line 29
    invoke-virtual {p0, v0}, Lcom/roblox/client/provider/b;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 30
    iget-object p1, p0, Lcom/roblox/client/provider/b;->a:Lcom/roblox/client/f/d;

    invoke-virtual {p1}, Lcom/roblox/client/f/d;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "user_agent_param"

    .line 32
    invoke-virtual {p0, v0}, Lcom/roblox/client/provider/b;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 33
    iget-object p1, p0, Lcom/roblox/client/provider/b;->a:Lcom/roblox/client/f/d;

    invoke-virtual {p1}, Lcom/roblox/client/f/d;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "default_user_agent_param"

    .line 35
    invoke-virtual {p0, v0}, Lcom/roblox/client/provider/b;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 36
    iget-object p1, p0, Lcom/roblox/client/provider/b;->a:Lcom/roblox/client/f/d;

    invoke-virtual {p1}, Lcom/roblox/client/f/d;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "dev_rpc_ip_port_override"

    .line 38
    invoke-virtual {p0, v0}, Lcom/roblox/client/provider/b;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 39
    iget-object p1, p0, Lcom/roblox/client/provider/b;->a:Lcom/roblox/client/f/d;

    invoke-virtual {p1}, Lcom/roblox/client/f/d;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
