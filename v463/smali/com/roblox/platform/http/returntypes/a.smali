.class public Lcom/roblox/platform/http/returntypes/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    const/4 p1, 0x0

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 46
    iput-boolean v3, p0, Lcom/roblox/platform/http/returntypes/a;->e:Z

    const-string v3, "errors"

    .line 47
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 51
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "code"

    .line 54
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "message"

    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userFacingMessage"

    .line 56
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v2, v0

    move-object v0, v1

    goto :goto_1

    .line 60
    :cond_0
    iput-boolean p1, p0, Lcom/roblox/platform/http/returntypes/a;->e:Z

    :cond_1
    move-object p1, v0

    .line 63
    :goto_1
    iput v2, p0, Lcom/roblox/platform/http/returntypes/a;->a:I

    .line 64
    iput-object v0, p0, Lcom/roblox/platform/http/returntypes/a;->b:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/roblox/platform/http/returntypes/a;->e:Z

    return v0
.end method
