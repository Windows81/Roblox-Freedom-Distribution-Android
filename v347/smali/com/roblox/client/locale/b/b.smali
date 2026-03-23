.class public Lcom/roblox/client/locale/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/locale/c;

.field private b:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/locale/b/b;->a:Lcom/roblox/client/locale/c;

    .line 17
    const-string v0, "contents"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/roblox/client/locale/b/b;->b:Lorg/json/JSONArray;

    .line 18
    return-void

    .line 16
    :cond_0
    const-string v0, "locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/locale/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/c;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_1
    const-string v0, "contents"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/roblox/client/locale/c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/locale/b/b;->a:Lcom/roblox/client/locale/c;

    return-object v0
.end method

.method public b()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/roblox/client/locale/b/b;->b:Lorg/json/JSONArray;

    return-object v0
.end method
