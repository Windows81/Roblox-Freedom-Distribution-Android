.class public Lcom/roblox/client/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/SharedPreferences;

.field private d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "configure_dev_settings"

    iput-object v0, p0, Lcom/roblox/client/d/a;->a:Ljava/lang/String;

    .line 17
    const-string v0, "config_json"

    iput-object v0, p0, Lcom/roblox/client/d/a;->b:Ljava/lang/String;

    .line 24
    const-string v0, "configure_dev_settings"

    invoke-static {p1, v0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/d/a;->c:Landroid/content/SharedPreferences;

    .line 25
    iget-object v0, p0, Lcom/roblox/client/d/a;->c:Landroid/content/SharedPreferences;

    const-string v1, "config_json"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/roblox/client/d/a;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/d/a;->d:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    new-instance v0, Lcom/roblox/client/d/a;

    invoke-direct {v0, p0}, Lcom/roblox/client/d/a;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0}, Lcom/roblox/client/d/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/roblox/client/d/a;->d:Lorg/json/JSONObject;

    return-object v0
.end method
