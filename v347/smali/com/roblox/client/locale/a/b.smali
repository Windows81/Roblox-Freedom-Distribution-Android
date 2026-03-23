.class public Lcom/roblox/client/locale/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    if-eqz p2, :cond_1

    .line 73
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 75
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 76
    const-string v3, "namespace"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    const-string v4, "key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string v5, "translation"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-direct {p0, v3, v4}, Lcom/roblox/client/locale/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {p1}, Lcom/roblox/client/locale/c/b;->a(Landroid/content/Context;)Lcom/roblox/client/locale/c/b;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v3}, Lcom/roblox/client/locale/c/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3, v2}, Lcom/roblox/client/locale/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 89
    const-string v2, "rbx.locale"

    const-string v3, "Error reading updated string"

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/e;)V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/roblox/client/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/roblox/client/b;->q()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/roblox/client/locale/a/b;->a(Landroid/content/Context;Ljava/lang/String;ILcom/roblox/client/locale/e;)V

    .line 49
    const-string v0, "rbx.locale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;ILcom/roblox/client/locale/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    .line 56
    :try_start_0
    new-instance v0, Lcom/roblox/client/locale/b/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/roblox/client/locale/b/b;-><init>(Lorg/json/JSONObject;)V

    .line 57
    invoke-virtual {v0}, Lcom/roblox/client/locale/b/b;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/roblox/client/locale/a/b;->a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/roblox/client/locale/b/b;->a()Lcom/roblox/client/locale/c;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/roblox/client/locale/e;->a(Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v0, "rbx.locale"

    const-string v1, "Could not read updated strings"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-interface {p4, v2, v2}, Lcom/roblox/client/locale/e;->a(Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {p4, v2, v2}, Lcom/roblox/client/locale/e;->a(Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V

    goto :goto_0
.end method
