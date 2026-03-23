.class public Lcom/roblox/client/ad/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ad/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/ad/b;
    .locals 1

    .line 32
    sget-object v0, Lcom/roblox/client/ad/b$a;->a:Lcom/roblox/client/ad/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/roblox/client/ad/b;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/roblox/client/ad/b;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/roblox/client/ad/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "credential_type_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ad/b;->b:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ad/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    iput-object p1, p0, Lcom/roblox/client/ad/b;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/roblox/client/ad/b;->b:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "credential_value_key"

    .line 62
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "credential_type_key"

    .line 63
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/roblox/client/ad/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "credential_value_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ad/b;->a:Ljava/lang/String;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ad/b;->a:Ljava/lang/String;

    return-object v0
.end method
