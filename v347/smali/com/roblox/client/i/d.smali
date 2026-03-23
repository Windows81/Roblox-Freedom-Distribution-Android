.class public Lcom/roblox/client/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/i/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "AppsFlyerManager"

    const-string v1, "[AppsFlyerManager]: Constructor called."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static a()Lcom/roblox/client/i/d;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/roblox/client/i/d$a;->a:Lcom/roblox/client/i/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/roblox/client/b;->bH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "productId"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "price"

    invoke-direct {v1, v2, p2}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "currencyCode"

    invoke-direct {v1, v2, p3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v1, "purchaseReported"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/i/d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 167
    const-string v0, "Android-AppsFlyer-Purchase"

    invoke-direct {p0, v0}, Lcom/roblox/client/i/d;->a(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/datastructures/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/roblox/client/b;->bI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "appsFlyer"

    invoke-static {p1, v0, p2}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 174
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/roblox/client/b;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string v0, "AppsFlyerManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/roblox/client/b;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "AppsFlyerManager"

    const-string v1, "enabled"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/appsflyer/f;->c()Lcom/appsflyer/f;

    move-result-object v1

    move-object v0, p1

    .line 61
    check-cast v0, Landroid/app/Application;

    const-string v2, "Quwp4RGsFwE6rVnyTFm6jQ"

    invoke-virtual {v1, v0, v2}, Lcom/appsflyer/f;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/roblox/client/i/d$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/i/d$1;-><init>(Lcom/roblox/client/i/d;)V

    invoke-virtual {v1, p1, v0}, Lcom/appsflyer/f;->a(Landroid/content/Context;Lcom/appsflyer/d;)V

    .line 104
    invoke-virtual {v1, v3}, Lcom/appsflyer/f;->b(Z)V

    .line 105
    invoke-virtual {v1, v3}, Lcom/appsflyer/f;->a(Z)V

    .line 107
    iput-object p1, p0, Lcom/roblox/client/i/d;->a:Landroid/content/Context;

    .line 109
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 146
    const-string v0, "AppsFlyerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase. Price: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/roblox/client/i/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "AppsFlyerManager"

    const-string v1, "enabled"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string v2, "af_revenue"

    if-eqz p2, :cond_1

    move-object v0, p2

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "af_currency"

    if-eqz p3, :cond_2

    move-object v0, p3

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "af_content_id"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v2, "af_param_1"

    if-eqz p4, :cond_3

    const-string v0, "Amazon"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcom/appsflyer/f;->c()Lcom/appsflyer/f;

    move-result-object v0

    iget-object v2, p0, Lcom/roblox/client/i/d;->a:Landroid/content/Context;

    const-string v3, "af_purchase"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/i/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void

    .line 150
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 151
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 153
    :cond_3
    const-string v0, "Android"

    goto :goto_2
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    const-string v0, "AppsFlyerManager"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/roblox/client/i/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "AppsFlyerManager"

    const-string v1, "enabled"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/appsflyer/f;->c()Lcom/appsflyer/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/i/d;->a:Landroid/content/Context;

    const-string v2, "af_login"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    const-string v0, "loginReported"

    invoke-direct {p0, v0, v3}, Lcom/roblox/client/i/d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 117
    const-string v0, "Android-AppsFlyer-Login"

    invoke-direct {p0, v0}, Lcom/roblox/client/i/d;->a(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lcom/appsflyer/f;->c()Lcom/appsflyer/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appsflyer/f;->c(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    const-string v0, "AppsFlyerManager"

    const-string v1, "signup"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/roblox/client/i/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "AppsFlyerManager"

    const-string v1, "enabled"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/appsflyer/f;->c()Lcom/appsflyer/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/i/d;->a:Landroid/content/Context;

    const-string v2, "af_complete_registration"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    const-string v0, "signUpReported"

    invoke-direct {p0, v0, v3}, Lcom/roblox/client/i/d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 131
    const-string v0, "Android-AppsFlyer-Registration"

    invoke-direct {p0, v0}, Lcom/roblox/client/i/d;->a(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/appsflyer/f;->c()Lcom/appsflyer/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appsflyer/f;->c(Z)V

    .line 137
    :cond_1
    return-void
.end method
