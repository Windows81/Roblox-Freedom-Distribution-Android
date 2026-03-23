.class public Lcom/roblox/client/f/b;
.super Lcom/roblox/client/m;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/roblox/client/j/c;

.field private final b:Ljava/lang/String;

.field private c:Landroid/support/v7/widget/Toolbar;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    .line 43
    const-string v0, "rbx.events"

    iput-object v0, p0, Lcom/roblox/client/f/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)Lcom/roblox/client/components/n;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/roblox/client/components/n;

    invoke-virtual {p0}, Lcom/roblox/client/f/b;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    const-string v2, "Title"

    .line 144
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/roblox/client/util/c;

    invoke-direct {v4}, Lcom/roblox/client/util/c;-><init>()V

    .line 145
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlWWW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/roblox/client/util/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PageUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LogoImageURL"

    .line 146
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/components/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {v0, p0}, Lcom/roblox/client/components/n;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-object v0
.end method

.method private a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/roblox/client/j/d;

    const-string v1, "tabEvents"

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/j/d;-><init>(Lcom/roblox/client/m;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/d;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 113
    new-instance v0, Lcom/roblox/client/j/c;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/c;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/f/b;->a:Lcom/roblox/client/j/c;

    .line 114
    iget-object v0, p0, Lcom/roblox/client/f/b;->a:Lcom/roblox/client/j/c;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 115
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 119
    sget-object v1, Lcom/roblox/client/RobloxSettings;->eventsData:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 121
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/roblox/client/RobloxSettings;->eventsData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v2, "Data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 127
    const-string v3, "rbx.events"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "populateEvents() count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    if-ge v0, v2, :cond_0

    .line 130
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 131
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/roblox/client/f/b;->a(Lorg/json/JSONObject;Z)Lcom/roblox/client/components/n;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "rbx.events"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing events json error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_1
    return-void

    .line 138
    :cond_1
    const-string v0, "rbx.events"

    const-string v1, "No active events"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/roblox/client/f/b;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "MORE_NATIVE_WEB_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 172
    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lcom/roblox/client/n;

    invoke-direct {v1}, Lcom/roblox/client/n;-><init>()V

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    const-string v2, "DEFAULT_URL"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    move-object v0, v1

    .line 179
    check-cast v0, Lcom/roblox/client/n;

    invoke-virtual {v0, p1}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/roblox/client/f/b;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 182
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    const v2, 0x7f0800ac

    const-string v3, "MORE_NATIVE_WEB_FRAGMENT"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 185
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 187
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 188
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/roblox/client/f/b;->a:Lcom/roblox/client/j/c;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/roblox/client/f/b;->a:Lcom/roblox/client/j/c;

    invoke-virtual {v0}, Lcom/roblox/client/j/c;->b()V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/roblox/client/f/b;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "MORE_NATIVE_WEB_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    check-cast v0, Lcom/roblox/client/n;

    invoke-virtual {v0}, Lcom/roblox/client/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/f/b;->b()Z

    move-result v0

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/roblox/client/f/b;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "MORE_NATIVE_WEB_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/roblox/client/f/b;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 207
    invoke-virtual {v1}, Landroid/support/v4/app/p;->d()I

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 154
    instance-of v0, p1, Lcom/roblox/client/components/n;

    if-eqz v0, :cond_0

    .line 155
    check-cast p1, Lcom/roblox/client/components/n;

    .line 157
    invoke-virtual {p1}, Lcom/roblox/client/components/n;->getEventUrl()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-direct {p0, v0}, Lcom/roblox/client/f/b;->a(Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v0, "rbx.events"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null or Empty URL for the event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/components/n;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 55
    const v0, 0x7f0a0060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    const v0, 0x7f0801d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/f/b;->c:Landroid/support/v7/widget/Toolbar;

    .line 58
    iget-object v0, p0, Lcom/roblox/client/f/b;->c:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0e0100

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 61
    iget-object v0, p0, Lcom/roblox/client/f/b;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/roblox/client/f/b;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/f/b$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/f/b$1;-><init>(Lcom/roblox/client/f/b;)V

    invoke-static {v0, v2, v3}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0800ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/f/b;->d:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lcom/roblox/client/f/b;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/roblox/client/f/b;->a(Landroid/widget/LinearLayout;)V

    .line 75
    iget-object v0, p0, Lcom/roblox/client/f/b;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/f/b;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/roblox/client/f/b;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 77
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/roblox/client/m;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/roblox/client/f/b;->c()V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/roblox/client/m;->onStart()V

    .line 83
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 89
    invoke-super {p0}, Lcom/roblox/client/m;->onStop()V

    .line 90
    return-void
.end method

.method public onUnreadNotificationCountEvent(Lcom/roblox/client/e/w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/roblox/client/f/b;->c()V

    .line 101
    return-void
.end method
