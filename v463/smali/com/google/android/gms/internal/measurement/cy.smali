.class public final Lcom/google/android/gms/internal/measurement/cy;
.super Lcom/google/android/gms/internal/measurement/fx;


# instance fields
.field private a:Lcom/google/android/gms/internal/measurement/da;

.field private b:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/fx;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    sget-object p1, Lcom/google/android/gms/internal/measurement/cz;->a:Lcom/google/android/gms/internal/measurement/da;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    return-void
.end method

.method public static v()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->E:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static w()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->e:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static y()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->a:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method final A()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->f()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ds;->w()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/dn;->J:Lcom/google/android/gms/internal/measurement/do;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/do;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/measurement/da;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/do;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->p:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/cy;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    if-nez p1, :cond_0

    :catch_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/do;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/da;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/do;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1
.end method

.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->a()V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/measurement/da;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    :catch_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/do;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/da;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/do;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1
.end method

.method final b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object p1

    const-string v1, "Failed to load metadata: PackageManager is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/d/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object p1

    const-string v1, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object p1

    const-string v1, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    return-object v0

    :cond_2
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v1

    const-string v2, "Failed to load metadata: Package name not found"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->b()V

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    if-nez p1, :cond_0

    :catch_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/do;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/da;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/do;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->c()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    const-string v1, "gaia_collection_enabled"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/da;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/internal/measurement/cp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->d()Lcom/google/android/gms/internal/measurement/cp;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    const-string v1, "measurement.event_sampling_enabled"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/da;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->a:Lcom/google/android/gms/internal/measurement/da;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/do;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/da;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/do;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/measurement/gb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->e()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v0

    return-object v0
.end method

.method final e(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->N:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/cy;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/measurement/ds;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->f()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v0

    return-object v0
.end method

.method final f(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->P:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/cy;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/measurement/dh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->g()Lcom/google/android/gms/internal/measurement/dh;

    move-result-object v0

    return-object v0
.end method

.method final g(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->Q:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/cy;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/measurement/gz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->h()Lcom/google/android/gms/internal/measurement/gz;

    move-result-object v0

    return-object v0
.end method

.method final h(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->R:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/cy;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/measurement/gw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->i()Lcom/google/android/gms/internal/measurement/gw;

    move-result-object v0

    return-object v0
.end method

.method final i(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->S:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/cy;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/common/util/d;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    return-object v0
.end method

.method final j(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->U:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/cy;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic k()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->k()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/internal/measurement/dt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->l()Lcom/google/android/gms/internal/measurement/dt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/internal/measurement/dv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->m()Lcom/google/android/gms/internal/measurement/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/internal/measurement/iq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->n()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/internal/measurement/hy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->o()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/internal/measurement/ex;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->p()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/measurement/dx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/internal/measurement/ei;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/internal/measurement/cy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fx;->s()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v0

    return-object v0
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/n;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->b:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cy;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    const-string v0, "firebase_analytics_collection_deactivated"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/cy;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "debug.firebase.analytics.app"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v2

    const-string v3, "SystemProperties.get() threw an exception"

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v2

    const-string v3, "Could not access SystemProperties.get()"

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v2

    const-string v3, "Could not find SystemProperties.get() method"

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v2

    const-string v3, "Could not find SystemProperties class"

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method final z()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->f()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ds;->w()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/dn;->I:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/cy;->d(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/do;)Z

    move-result v0

    return v0
.end method
