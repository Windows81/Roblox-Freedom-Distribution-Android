.class public Lcom/google/ads/interactivemedia/v3/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/a$a;,
        Lcom/google/ads/interactivemedia/v3/impl/a$c;,
        Lcom/google/ads/interactivemedia/v3/impl/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/a$b;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

.field private f:Landroid/app/Activity;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a$c;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/a;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/impl/a$b;)V

    .line 108
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/impl/a$b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 118
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    .line 119
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->d:Lcom/google/ads/interactivemedia/v3/impl/a$b;

    .line 120
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->f:Landroid/app/Activity;

    .line 121
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->g:Z

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->f:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/impl/a;)Lcom/google/ads/interactivemedia/v3/impl/x;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->i()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/impl/a;)Lcom/google/ads/interactivemedia/v3/impl/a$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    return-object v0
.end method

.method private i()Landroid/app/Application;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Landroid/app/Application;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;
    .locals 8

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->g()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->h()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->f()Z

    move-result v2

    .line 220
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->e()D

    move-result-wide v4

    .line 221
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->d:Lcom/google/ads/interactivemedia/v3/impl/a$b;

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/impl/a$b;->a()J

    move-result-wide v6

    .line 223
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->queryId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->eventId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    .line 224
    invoke-interface {v3, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->vastEvent(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, p4}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->appState(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, v6, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeTime(J)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeVolume(D)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v3

    .line 225
    invoke-interface {v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewHidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v0

    .line 226
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewVisibleBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->build()Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x$a;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 232
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/w$c;->viewability:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 235
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 238
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/w$c;->viewability:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 241
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->g:Z

    .line 132
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->a:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->g:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->i()Landroid/app/Application;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/a$a;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/a$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/a;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    .line 159
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 162
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/a;->i()Landroid/app/Application;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->e:Lcom/google/ads/interactivemedia/v3/impl/a$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 172
    :cond_0
    return-void
.end method

.method public e()D
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 178
    const-wide/16 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 183
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 184
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 186
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 192
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .locals 4

    .prologue
    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 197
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 198
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 198
    invoke-static {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->create(IIII)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 203
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    .line 205
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 206
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 210
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 209
    invoke-static {v0, v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->create(IIII)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    .line 205
    goto :goto_0
.end method
