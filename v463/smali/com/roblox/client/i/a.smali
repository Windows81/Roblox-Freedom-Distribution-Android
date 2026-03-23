.class public Lcom/roblox/client/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/roblox/client/f/e;

.field private d:Lorg/json/JSONObject;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "configure_dev_settings"

    .line 16
    iput-object v0, p0, Lcom/roblox/client/i/a;->a:Ljava/lang/String;

    const-string v0, "config_json"

    .line 17
    iput-object v0, p0, Lcom/roblox/client/i/a;->b:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/roblox/client/i/a;->e:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/roblox/client/f/e;

    invoke-direct {v0, p1}, Lcom/roblox/client/f/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roblox/client/i/a;->c:Lcom/roblox/client/f/e;

    .line 28
    invoke-virtual {v0, p1}, Lcom/roblox/client/f/e;->a(Landroid/content/Context;)Lcom/roblox/client/f/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/roblox/client/f/d;->d()Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/roblox/client/i/a;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    if-eqz p0, :cond_0

    .line 59
    new-instance v0, Lcom/roblox/client/i/a;

    invoke-direct {v0, p0}, Lcom/roblox/client/i/a;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0}, Lcom/roblox/client/i/a;->a()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/roblox/client/i/a;->d:Lorg/json/JSONObject;

    return-object v0
.end method
