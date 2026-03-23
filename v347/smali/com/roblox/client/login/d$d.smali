.class Lcom/roblox/client/login/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/d;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/roblox/client/login/d;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/roblox/client/login/d$d;->a:Lcom/roblox/client/login/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v0, "LuaChat"

    iput-object v0, p0, Lcom/roblox/client/login/d$d;->b:Ljava/lang/String;

    .line 125
    const-string v0, "rolloutFeatures"

    iput-object v0, p0, Lcom/roblox/client/login/d$d;->c:Ljava/lang/String;

    .line 126
    const-string v0, "featureName"

    iput-object v0, p0, Lcom/roblox/client/login/d$d;->d:Ljava/lang/String;

    .line 127
    const-string v0, "isRolloutEnabled"

    iput-object v0, p0, Lcom/roblox/client/login/d$d;->e:Ljava/lang/String;

    .line 129
    const-string v0, "ChatRolloutSettings"

    iput-object v0, p0, Lcom/roblox/client/login/d$d;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/login/d;Lcom/roblox/client/login/d$1;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/roblox/client/login/d$d;-><init>(Lcom/roblox/client/login/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/d$d;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/roblox/client/login/d$d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v1, "rolloutFeatures"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 163
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 164
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 165
    const-string v3, "LuaChat"

    const-string v4, "featureName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    const-string v0, "isRolloutEnabled"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/roblox/client/n/a;->a(Z)V

    .line 170
    :cond_0
    return-void

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    const-string v1, "LuaChat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/platform/http/c/b;->b(Ljava/util/List;)Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/login/d$d$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/d$d$1;-><init>(Lcom/roblox/client/login/d$d;)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 158
    return-void
.end method
