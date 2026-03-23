.class public abstract Lcom/roblox/client/k/c;
.super Lcom/roblox/client/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/k/c$f;,
        Lcom/roblox/client/k/c$i;,
        Lcom/roblox/client/k/c$a;,
        Lcom/roblox/client/k/c$b;,
        Lcom/roblox/client/k/c$e;,
        Lcom/roblox/client/k/c$d;,
        Lcom/roblox/client/k/c$h;,
        Lcom/roblox/client/k/c$c;,
        Lcom/roblox/client/k/c$g;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/k/c$g;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/roblox/client/k/c$f;

.field protected c:Landroid/support/v7/widget/Toolbar;

.field protected d:Lcom/roblox/client/j/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    .line 194
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/k/c;)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/roblox/client/k/c;->c()I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/roblox/client/j/d;

    const-string v1, "tabMore"

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/j/d;-><init>(Lcom/roblox/client/m;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/d;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 275
    new-instance v0, Lcom/roblox/client/j/c;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/c;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/k/c;->d:Lcom/roblox/client/j/c;

    .line 276
    iget-object v0, p0, Lcom/roblox/client/k/c;->d:Lcom/roblox/client/j/c;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/k/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/roblox/client/k/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 281
    const-string v0, "CREATE_GAMES_TAG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/roblox/client/k/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v0

    const-string v1, "MORE_MENU_PREFS"

    invoke-virtual {v0, v1}, Lcom/roblox/client/util/m;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 283
    const-string v1, "PREF_CREATE_GAMES_NEW_LABEL_SHOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    const-string v1, "PREF_CREATE_GAMES_NEW_LABEL_SHOWN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    iget-object v0, p0, Lcom/roblox/client/k/c;->b:Lcom/roblox/client/k/c$f;

    invoke-virtual {v0}, Lcom/roblox/client/k/c$f;->notifyDataSetChanged()V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/k/c;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 292
    instance-of v1, v0, Lcom/roblox/client/ActivityNativeMain;

    if-eqz v1, :cond_1

    .line 293
    check-cast v0, Lcom/roblox/client/ActivityNativeMain;

    .line 294
    new-instance v1, Lcom/roblox/client/feature/FeatureState;

    invoke-direct {v1, p1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/feature/FeatureState;)V

    .line 296
    :cond_1
    return-void
.end method

.method private c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 257
    sget-object v1, Lcom/roblox/client/RobloxSettings;->eventsData:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/roblox/client/RobloxSettings;->eventsData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    const-string v2, "Data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    invoke-virtual {p0}, Lcom/roblox/client/k/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getEventsCount() could not parse json"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/k/c$g;",
            ">;"
        }
    .end annotation
.end method

.method protected a(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 250
    const v0, 0x7f0e010d

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 253
    invoke-virtual {p0}, Lcom/roblox/client/k/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V

    .line 254
    return-void
.end method

.method protected a(Lcom/roblox/client/k/c$g;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/roblox/client/k/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/roblox/client/k/c;->b:Lcom/roblox/client/k/c$f;

    invoke-virtual {v1, v0}, Lcom/roblox/client/k/c$f;->notifyItemChanged(I)V

    .line 247
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/roblox/client/k/c;->d:Lcom/roblox/client/j/c;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/roblox/client/k/c;->d:Lcom/roblox/client/j/c;

    invoke-virtual {v0}, Lcom/roblox/client/j/c;->b()V

    .line 242
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/roblox/client/k/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/k/c;->a:Ljava/util/ArrayList;

    .line 201
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 211
    const v0, 0x7f0a0066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 213
    const v0, 0x7f0801d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/k/c;->c:Landroid/support/v7/widget/Toolbar;

    .line 215
    iget-object v0, p0, Lcom/roblox/client/k/c;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/roblox/client/k/c;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 217
    iget-object v0, p0, Lcom/roblox/client/k/c;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/k/c;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/k/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 219
    const v0, 0x7f080139

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 220
    new-instance v2, Lcom/roblox/client/k/c$f;

    iget-object v3, p0, Lcom/roblox/client/k/c;->a:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/roblox/client/k/c$f;-><init>(Lcom/roblox/client/k/c;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/roblox/client/k/c;->b:Lcom/roblox/client/k/c$f;

    .line 221
    iget-object v2, p0, Lcom/roblox/client/k/c;->b:Lcom/roblox/client/k/c$f;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 222
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/roblox/client/k/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 224
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/roblox/client/m;->onResume()V

    .line 230
    invoke-virtual {p0}, Lcom/roblox/client/k/c;->d()V

    .line 231
    return-void
.end method

.method public onUnreadNotificationCountEvent(Lcom/roblox/client/e/w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/roblox/client/k/c;->d()V

    .line 236
    return-void
.end method
