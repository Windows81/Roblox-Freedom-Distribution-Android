.class public Lcom/roblox/client/provider/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/f/d$a;


# instance fields
.field private a:Lcom/roblox/client/x/a;

.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/roblox/client/x/a;

    invoke-direct {v0, p1}, Lcom/roblox/client/x/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roblox/client/provider/c;->a:Lcom/roblox/client/x/a;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object v0

    const-string v1, "configure_dev_roblox"

    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ae/s;->a(Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    .line 26
    invoke-static {p1}, Lcom/roblox/client/u;->b(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Lcom/roblox/client/u;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/provider/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/client/f/d;
    .locals 9

    .line 32
    iget-object v0, p0, Lcom/roblox/client/provider/c;->a:Lcom/roblox/client/x/a;

    invoke-virtual {v0}, Lcom/roblox/client/x/a;->b()Ljava/lang/String;

    move-result-object v4

    .line 33
    iget-object v0, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "BaseUrl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    const-string v3, "user_agent"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    iget-object v1, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    const-string v3, "dev_rpc_ip_port_override"

    .line 36
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    new-instance v8, Lcom/roblox/client/f/d;

    iget-object v6, p0, Lcom/roblox/client/provider/c;->c:Ljava/lang/String;

    const-string v3, "www.roblox.com/"

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/roblox/client/provider/c;->a:Lcom/roblox/client/x/a;

    invoke-virtual {v0, p1}, Lcom/roblox/client/x/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/provider/c;->a:Lcom/roblox/client/x/a;

    invoke-virtual {p1}, Lcom/roblox/client/x/a;->a()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "BaseUrl"

    if-eqz p1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "user_agent"

    if-eqz p1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "dev_rpc_ip_port_override"

    if-eqz p1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/provider/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
