.class public final Lcom/google/android/gms/ads/internal/gmsg/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/ae;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/qz;",
        ":",
        "Lcom/google/android/gms/internal/ads/ra;",
        ":",
        "Lcom/google/android/gms/internal/ads/re;",
        ":",
        "Lcom/google/android/gms/internal/ads/rh;",
        ":",
        "Lcom/google/android/gms/internal/ads/rk;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/ae",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/agv;

.field private final c:Lcom/google/android/gms/internal/ads/zzang;

.field private final d:Lcom/google/android/gms/ads/internal/overlay/s;

.field private final e:Lcom/google/android/gms/internal/ads/anv;

.field private final f:Lcom/google/android/gms/ads/internal/overlay/m;

.field private final g:Lcom/google/android/gms/ads/internal/gmsg/k;

.field private final h:Lcom/google/android/gms/ads/internal/gmsg/m;

.field private final i:Lcom/google/android/gms/ads/internal/bu;

.field private final j:Lcom/google/android/gms/internal/ads/d;

.field private final k:Lcom/google/android/gms/internal/ads/qd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/agv;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/anv;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/gmsg/m;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->k:Lcom/google/android/gms/internal/ads/qd;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->c:Lcom/google/android/gms/internal/ads/zzang;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->b:Lcom/google/android/gms/internal/ads/agv;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->d:Lcom/google/android/gms/ads/internal/overlay/s;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->e:Lcom/google/android/gms/internal/ads/anv;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->g:Lcom/google/android/gms/ads/internal/gmsg/k;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->h:Lcom/google/android/gms/ads/internal/gmsg/m;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->i:Lcom/google/android/gms/ads/internal/bu;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->j:Lcom/google/android/gms/internal/ads/d;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->f:Lcom/google/android/gms/ads/internal/overlay/m;

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/agv;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/agv;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, p0, p3, p4}, Lcom/google/android/gms/internal/ads/agv;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/agw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->i()Lcom/google/android/gms/internal/ads/in;

    move-result-object v1

    const-string v2, "OpenGmsgHandler.maybeAddClickSignalsToUrl"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/in;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->j:Lcom/google/android/gms/internal/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->j:Lcom/google/android/gms/internal/ads/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d;->a(Z)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->g()Lcom/google/android/gms/internal/ads/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/js;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->g()Lcom/google/android/gms/internal/ads/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/js;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->g()Lcom/google/android/gms/internal/ads/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/js;->c()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Lcom/google/android/gms/internal/ads/qz;

    const-string v1, "u"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ic;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "a"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Action missing from an open GMSG."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->i:Lcom/google/android/gms/ads/internal/bu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->i:Lcom/google/android/gms/ads/internal/bu;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/bu;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/gmsg/e;->i:Lcom/google/android/gms/ads/internal/bu;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/bu;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "expand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/ra;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ra;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Cannot expand WebView that is already expanded."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Z)V

    check-cast p1, Lcom/google/android/gms/internal/ads/re;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Ljava/util/Map;)Z

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/e;->b(Ljava/util/Map;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/re;->a(ZI)V

    goto :goto_0

    :cond_3
    const-string v2, "webapp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Z)V

    if-eqz v3, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/re;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Ljava/util/Map;)Z

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/e;->b(Ljava/util/Map;)I

    move-result v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/re;->a(ZILjava/lang/String;)V

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/ads/re;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Ljava/util/Map;)Z

    move-result v3

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/e;->b(Ljava/util/Map;)I

    move-result v4

    const-string v1, "html"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "baseurl"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/re;->a(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v2, "true"

    const-string v1, "system_browser"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qz;->getContext()Landroid/content/Context;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Destination url cannot be empty."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/f;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qz;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/rh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rh;->y()Lcom/google/android/gms/internal/ads/agv;

    move-result-object v4

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/rk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rk;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/ads/internal/gmsg/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/agv;Landroid/view/View;)V

    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/internal/gmsg/f;->a(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/re;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/re;->a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Z)V

    const-string v1, "intent_url"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qz;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/rh;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rh;->y()Lcom/google/android/gms/internal/ads/agv;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/rk;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rk;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qz;->d()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v6, v7, v4, v1, v8}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/agv;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :goto_2
    :try_start_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    :goto_3
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_8
    if-eqz v5, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/ads/re;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v1, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/re;->a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v5, "Error parsing the url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    move-object v5, v2

    goto :goto_1

    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v1

    const-string v6, "Error occurred while adding signals."

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->i()Lcom/google/android/gms/internal/ads/in;

    move-result-object v6

    const-string v7, "OpenGmsgHandler.onGmsg"

    invoke-virtual {v6, v1, v7}, Lcom/google/android/gms/internal/ads/in;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_2

    :catch_3
    move-exception v4

    const-string v6, "Error parsing the uri: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->i()Lcom/google/android/gms/internal/ads/in;

    move-result-object v1

    const-string v6, "OpenGmsgHandler.onGmsg"

    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/internal/ads/in;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_b
    move-object v1, v2

    goto :goto_3

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qz;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/rh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rh;->y()Lcom/google/android/gms/internal/ads/agv;

    move-result-object v4

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/rk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rk;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qz;->d()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v2, v4, v3, v1, v5}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/agv;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    :cond_e
    check-cast p1, Lcom/google/android/gms/internal/ads/re;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v2, "i"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "m"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "p"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "c"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "f"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "e"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/re;->a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_0
.end method
