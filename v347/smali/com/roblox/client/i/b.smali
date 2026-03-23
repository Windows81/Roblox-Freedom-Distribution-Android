.class public Lcom/roblox/client/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/i/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/http/n;

.field private b:Lorg/json/JSONObject;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/ads/doubleclick/e;

.field private g:Lcom/roblox/client/j;

.field private h:Lcom/roblox/ima/a;

.field private i:Landroid/app/Activity;

.field private j:Lcom/roblox/client/game/a;

.field private k:Z

.field private final l:Lcom/roblox/client/http/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance v0, Lcom/roblox/client/i/b$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/i/b$3;-><init>(Lcom/roblox/client/i/b;)V

    iput-object v0, p0, Lcom/roblox/client/i/b;->l:Lcom/roblox/client/http/m;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/i/b;Lcom/roblox/client/http/n;)Lcom/roblox/client/http/n;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/roblox/client/i/b;->a:Lcom/roblox/client/http/n;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/i/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 258
    const-string v0, "AdSessionManager"

    const-string v1, "initPublisherInterstitialAd:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/doubleclick/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    .line 261
    iget-object v0, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    new-instance v1, Lcom/roblox/client/i/b$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/i/b$1;-><init>(Lcom/roblox/client/i/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/e;->a(Lcom/google/android/gms/ads/a;)V

    .line 313
    return-void
.end method

.method private a(Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 101
    const-string v0, "AdSessionManager"

    const-string v1, "initAdPlayer:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v0, 0x7f0801f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/ima/AdPlayer;

    .line 103
    iget-object v1, p0, Lcom/roblox/client/i/b;->h:Lcom/roblox/ima/a;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/roblox/ima/a;

    const-string v2, "en"

    invoke-direct {v1, p2, v0, v2, p0}, Lcom/roblox/ima/a;-><init>(Landroid/content/Context;Lcom/roblox/ima/AdPlayer;Ljava/lang/String;Lcom/roblox/client/a;)V

    iput-object v1, p0, Lcom/roblox/client/i/b;->h:Lcom/roblox/ima/a;

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/i/b;->h:Lcom/roblox/ima/a;

    invoke-virtual {v1, v0}, Lcom/roblox/ima/a;->a(Lcom/roblox/ima/AdPlayer;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/i/b;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/i/b;->k()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/i/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/i/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/i/b;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/roblox/client/i/b;->k:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 151
    const-string v0, "IsVideoAd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AdUnit"

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 331
    const-string v0, "AdSessionManager"

    const-string v1, "requestNewStaticAd:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lcom/roblox/client/i/b;->a(Landroid/content/Context;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    const-string v1, "AdUnit"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    const-string v1, "AdSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNewStaticAd: adUnit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/e;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    :cond_1
    const-string v1, "AdSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNewStaticAd: ... set adUnit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/e;->a(Ljava/lang/String;)V

    .line 346
    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/doubleclick/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/doubleclick/d$a;-><init>()V

    .line 347
    iget-object v0, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    const-string v2, "A"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    const-string v2, "A"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "u13"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/d$a;->a(Z)Lcom/google/android/gms/ads/doubleclick/d$a;

    .line 366
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/i/b;->g()Lorg/json/JSONObject;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 368
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/ads/doubleclick/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/d$a;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    :try_start_2
    const-string v0, "AdSessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestNewStaticAd: Exception when adding custom key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 378
    :catch_1
    move-exception v0

    .line 379
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 381
    :goto_2
    return-void

    .line 352
    :cond_4
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/d$a;->a(Z)Lcom/google/android/gms/ads/doubleclick/d$a;

    goto :goto_0

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/d$a;->a()Lcom/google/android/gms/ads/doubleclick/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/e;->a(Lcom/google/android/gms/ads/doubleclick/d;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method static synthetic b(Lcom/roblox/client/i/b;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/roblox/client/i/b;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/roblox/client/i/b;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/roblox/client/i/b;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/i/b;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/i/b;->l()V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/i/b;)Lcom/google/android/gms/ads/doubleclick/e;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    return-object v0
.end method

.method public static d()Lcom/roblox/client/i/b;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/roblox/client/i/b$a;->a:Lcom/roblox/client/i/b;

    return-object v0
.end method

.method static synthetic e(Lcom/roblox/client/i/b;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 87
    const-string v0, "AdSessionManager"

    const-string v1, "initVideoAdUi:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/roblox/client/i/b;->m()Landroid/app/Activity;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    iget-object v1, p0, Lcom/roblox/client/i/b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 92
    const v3, 0x7f0a0076

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    .line 93
    const v3, 0x7f0a0075

    iget-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    const v4, 0x7f0800f3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/i/b;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "AdSessionManager"

    const-string v1, "Activity reference is null, can\'t create video ad UI!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 111
    const-string v0, "AdSessionManager"

    const-string v1, "requestNewVideoAd:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    const-string v0, "AdSessionManager"

    const-string v1, "requestNewVideoAd: call initVideoAdUi again..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/roblox/client/i/b;->e()V

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/i/b;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    const-string v2, "AdUnit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    const-string v2, "AdSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestNewVideoAd: video adUnit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/roblox/client/i/b;->h:Lcom/roblox/ima/a;

    invoke-virtual {v2, v1}, Lcom/roblox/ima/a;->a(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/roblox/client/i/b;->h:Lcom/roblox/ima/a;

    invoke-virtual {v1, v0}, Lcom/roblox/ima/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "AdSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNewVideoAd: !!! Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic f(Lcom/roblox/client/i/b;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/roblox/client/i/b;->c:Z

    return v0
.end method

.method private g()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-direct {p0, v0}, Lcom/roblox/client/i/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 147
    :cond_1
    return-object v1
.end method

.method static synthetic g(Lcom/roblox/client/i/b;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/i/b;->f()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "AdSessionManager"

    const-string v1, "playVideoAd:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/i/b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/roblox/client/i/b;->h:Lcom/roblox/ima/a;

    invoke-virtual {v0}, Lcom/roblox/ima/a;->a()V

    .line 161
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/roblox/client/i/b;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/i/b;->j()V

    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 240
    const-string v0, "AdSessionManager"

    const-string v1, "initStaticAdUi:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/roblox/client/i/b;->m()Landroid/app/Activity;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 244
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 245
    const v3, 0x7f0a004e

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    .line 246
    const v3, 0x7f0a004d

    iget-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    const v4, 0x7f080091

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0, v1}, Lcom/roblox/client/i/b;->a(Landroid/content/Context;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v0, "AdSessionManager"

    const-string v1, "Activity reference is null, can\'t create static ad UI!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 316
    const-string v0, "AdSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playStaticAd: isLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/doubleclick/e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/roblox/client/i/b;->f:Lcom/google/android/gms/ads/doubleclick/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/e;->c()V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-string v0, "AdSessionManager"

    const-string v1, "playStaticAd: DFP ad not loaded."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0}, Lcom/roblox/client/i/b;->m()Landroid/app/Activity;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    const-string v1, "AdSessionManager"

    const-string v2, "playStaticAd: Request a new static ad..."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/roblox/client/i/b;->k:Z

    .line 325
    invoke-direct {p0, v0}, Lcom/roblox/client/i/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 386
    const-string v0, "AdSessionManager"

    const-string v1, "resumeGameJoinAttempt:..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/roblox/client/i/b;->g:Lcom/roblox/client/j;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/roblox/client/i/b;->g:Lcom/roblox/client/j;

    iget-object v1, p0, Lcom/roblox/client/i/b;->j:Lcom/roblox/client/game/a;

    iget-object v2, p0, Lcom/roblox/client/i/b;->i:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/j;->a(Lcom/roblox/client/game/a;Landroid/app/Activity;)V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/i/b;->g:Lcom/roblox/client/j;

    .line 391
    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 481
    new-instance v0, Lcom/roblox/client/http/r;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->flushAdCountUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/i/b$4;

    invoke-direct {v2, p0}, Lcom/roblox/client/i/b$4;-><init>(Lcom/roblox/client/i/b;)V

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/roblox/client/http/r;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;)V

    .line 488
    invoke-virtual {v0}, Lcom/roblox/client/http/r;->c()V

    .line 489
    return-void
.end method

.method private m()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    iget-object v1, p0, Lcom/roblox/client/i/b;->e:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/roblox/client/i/b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 496
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 165
    const-string v0, "AdSessionManager"

    const-string v1, "videoAdStartedPlaying:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lcom/roblox/client/i/b;->g:Lcom/roblox/client/j;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/roblox/client/i/b;->g:Lcom/roblox/client/j;

    invoke-interface {v1}, Lcom/roblox/client/j;->a()V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/i/b;->m()Landroid/app/Activity;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_1

    .line 174
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    const-string v2, "AdSessionManager"

    const-string v3, "videoAdStartedPlaying: ... set SENSOR_LANDSCAPE"

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 178
    :cond_1
    const-string v2, "AdSessionManager"

    const-string v3, "videoAdStartedPlaying: ... set view to VISIBLE"

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 184
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 187
    :cond_2
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "AdSessionManager"

    const-string v1, "initialize:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/i/b;->e:Ljava/lang/ref/WeakReference;

    .line 77
    iput-boolean v2, p0, Lcom/roblox/client/i/b;->c:Z

    .line 78
    iput-boolean v2, p0, Lcom/roblox/client/i/b;->k:Z

    .line 80
    invoke-direct {p0}, Lcom/roblox/client/i/b;->i()V

    .line 81
    invoke-direct {p0}, Lcom/roblox/client/i/b;->e()V

    .line 82
    return-void
.end method

.method public a(Lcom/roblox/client/j;Lcom/roblox/client/game/a;Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 440
    const-string v0, "AdSessionManager"

    const-string v1, "startAdPlayAttempt:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/roblox/client/i/b;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 442
    const-string v0, "AdSessionManager"

    const-string v1, "startAdPlayAttempt: Ad-details is not ready. Resume game now."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    if-eqz p1, :cond_0

    .line 444
    invoke-interface {p1, p2, p3}, Lcom/roblox/client/j;->a(Lcom/roblox/client/game/a;Landroid/app/Activity;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iput-object p1, p0, Lcom/roblox/client/i/b;->g:Lcom/roblox/client/j;

    .line 450
    iput-object p2, p0, Lcom/roblox/client/i/b;->j:Lcom/roblox/client/game/a;

    .line 451
    iput-object p3, p0, Lcom/roblox/client/i/b;->i:Landroid/app/Activity;

    .line 452
    new-instance v0, Lcom/roblox/client/http/n;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->showShowAdUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/i/b;->l:Lcom/roblox/client/http/m;

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/http/n;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V

    .line 453
    invoke-virtual {v0}, Lcom/roblox/client/http/n;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 226
    const-string v0, "AdSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMA videoAdError, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "MobileAds"

    const-string v1, "IMALoadingFailure"

    invoke-static {v0, v1, p1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz p2, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/roblox/client/i/b;->l()V

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/i/b;->k()V

    .line 234
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 191
    const-string v0, "AdSessionManager"

    const-string v1, "videoAdFinishedPlaying:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/roblox/client/i/b;->d:Landroid/view/View;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    const-string v0, "AdSessionManager"

    const-string v2, "videoAdFinishedPlaying: ... set view to INVISIBLE."

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-direct {p0}, Lcom/roblox/client/i/b;->m()Landroid/app/Activity;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_0

    .line 202
    const-string v0, "AdSessionManager"

    const-string v3, "videoAdFinishedPlaying: ... remove player-container view entirely."

    invoke-static {v0, v3}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/i/b;->k()V

    .line 212
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/roblox/client/i/b;->a:Lcom/roblox/client/http/n;

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "AdSessionManager"

    const-string v1, "getAdDetails: get-ad-details request is in progress. Do nothing."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v0, "AdSessionManager"

    const-string v1, "getAdDetails:..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Lcom/roblox/client/http/n;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getAdDetailsUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/i/b$2;

    invoke-direct {v2, p0, p1}, Lcom/roblox/client/i/b$2;-><init>(Lcom/roblox/client/i/b;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/http/n;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V

    iput-object v0, p0, Lcom/roblox/client/i/b;->a:Lcom/roblox/client/http/n;

    .line 435
    iget-object v0, p0, Lcom/roblox/client/i/b;->a:Lcom/roblox/client/http/n;

    invoke-virtual {v0}, Lcom/roblox/client/http/n;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 216
    const-string v0, "AdSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoAdIsLoaded: shouldShowAd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/roblox/client/i/b;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "MobileAds"

    const-string v1, "IMASuccess"

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Lcom/roblox/client/i/b;->c:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/roblox/client/i/b;->h()V

    .line 222
    :cond_0
    return-void
.end method
