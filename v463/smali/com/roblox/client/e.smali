.class public Lcom/roblox/client/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/roblox/client/e;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/e;Lcom/roblox/client/r/d$b;)Lcom/roblox/client/r/d$b;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/roblox/client/e;->a(Lcom/roblox/client/r/d$b;)Lcom/roblox/client/r/d$b;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/roblox/client/r/d$b;)Lcom/roblox/client/r/d$b;
    .locals 7

    const-string v0, "rbx.catalog"

    .line 63
    invoke-static {}, Lcom/roblox/client/b;->q()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 67
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "assetId"

    .line 68
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 70
    invoke-virtual {p1}, Lcom/roblox/client/r/d$b;->a()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    const-string v1, "locales"

    .line 72
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 74
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 76
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "locale"

    .line 77
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-static {v4}, Lcom/roblox/client/locale/f;->a(Ljava/lang/String;)Lcom/roblox/client/locale/f;

    move-result-object v5

    if-nez v5, :cond_1

    .line 87
    invoke-static {v4}, Lcom/roblox/client/locale/f;->b(Ljava/lang/String;)Lcom/roblox/client/locale/f;

    move-result-object v5

    .line 90
    :cond_1
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/roblox/client/locale/b;->c(Lcom/roblox/client/locale/f;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "name"

    .line 92
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    invoke-virtual {p1, v1}, Lcom/roblox/client/r/d$b;->a(Ljava/lang/String;)V

    const-string v1, "Using localized promo name"

    .line 95
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "description"

    .line 98
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 100
    invoke-virtual {p1, v1}, Lcom/roblox/client/r/d$b;->b(Ljava/lang/String;)V

    const-string v1, "Using localized promo description"

    .line 101
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string v1, "Could not parse catalog promo localization data"

    .line 109
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 31
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->p()J

    move-result-wide v0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v3

    const-string v5, "PREF_NAME_CATALOG_PROMO_SHOWN"

    invoke-static {v5, v2, v3, v4}, Lcom/roblox/client/u;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCatalogPromo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rbx.catalog"

    invoke-static {v3, v2}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v2, Lcom/roblox/client/r/d;

    new-instance v3, Lcom/roblox/client/e$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/e$1;-><init>(Lcom/roblox/client/e;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/roblox/client/r/d;-><init>(JLcom/roblox/client/r/d$a;)V

    .line 54
    invoke-static {}, Lcom/roblox/client/s/g;->a()Lcom/birbit/android/jobqueue/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/birbit/android/jobqueue/i;->a(Lcom/birbit/android/jobqueue/g;)V

    :cond_1
    return-void
.end method

.method protected a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 118
    const-class v0, Lcom/roblox/client/n/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/roblox/client/b;->p()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/roblox/client/e;->a:Landroidx/fragment/app/Fragment;

    .line 135
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roblox/client/e;->a:Landroidx/fragment/app/Fragment;

    .line 136
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roblox/client/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->y()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/roblox/client/e;->a:Landroidx/fragment/app/Fragment;

    .line 137
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->t()Landroidx/fragment/app/g;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roblox/client/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->t()Landroidx/fragment/app/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPromo() title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rbx.catalog"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Lcom/roblox/client/n/a;

    invoke-direct {v1}, Lcom/roblox/client/n/a;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/n/a;->a(II)V

    .line 144
    iget-object v2, p0, Lcom/roblox/client/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->s()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$d;->catalogPromoWidth:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 146
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "dialogWidth"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x2

    const-string v4, "dialogHeight"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "assetId"

    .line 149
    invoke-virtual {v3, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "title"

    .line 150
    invoke-virtual {v3, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "description"

    .line 151
    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "thumbnail"

    .line 152
    invoke-virtual {v3, p3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, v3}, Lcom/roblox/client/n/a;->g(Landroid/os/Bundle;)V

    .line 155
    iget-object p3, p0, Lcom/roblox/client/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->t()Landroidx/fragment/app/g;

    move-result-object p3

    invoke-virtual {v1, p3, v0}, Lcom/roblox/client/n/a;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    .line 158
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/roblox/client/s/h;->b()J

    move-result-wide p2

    const-string p4, "PREF_NAME_CATALOG_PROMO_SHOWN"

    invoke-static {p4, p1, p2, p3}, Lcom/roblox/client/u;->b(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
