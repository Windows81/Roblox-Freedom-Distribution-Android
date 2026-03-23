.class public Lcom/roblox/client/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/b$a;,
        Lcom/roblox/client/b$b;,
        Lcom/roblox/client/b$c;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static final d:Lcom/roblox/client/m/e;

.field private static e:Lcom/roblox/client/b$c;

.field private static f:J

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    .line 66
    sget-object v0, Lcom/roblox/client/b$c;->a:Lcom/roblox/client/b$c;

    sput-object v0, Lcom/roblox/client/b;->e:Lcom/roblox/client/b$c;

    const/4 v0, 0x0

    .line 450
    sput v0, Lcom/roblox/client/b;->g:I

    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 1

    .line 536
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static B()Ljava/lang/String;
    .locals 1

    .line 544
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static C()Z
    .locals 1

    .line 546
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->n()Z

    move-result v0

    return v0
.end method

.method public static D()Ljava/lang/String;
    .locals 1

    .line 553
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static E()Z
    .locals 4

    .line 556
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 557
    sget-object v1, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v1}, Lcom/roblox/client/m/e;->p()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static F()Z
    .locals 1

    .line 560
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->q()Z

    move-result v0

    return v0
.end method

.method public static G()Z
    .locals 1

    .line 562
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->af()Z

    move-result v0

    return v0
.end method

.method public static H()Ljava/lang/String;
    .locals 1

    .line 563
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static I()Ljava/lang/String;
    .locals 1

    .line 564
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static J()I
    .locals 1

    .line 565
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->t()I

    move-result v0

    return v0
.end method

.method public static K()Z
    .locals 1

    .line 566
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->u()Z

    move-result v0

    return v0
.end method

.method public static L()I
    .locals 1

    .line 570
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->y()I

    move-result v0

    return v0
.end method

.method public static M()I
    .locals 1

    .line 573
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->z()I

    move-result v0

    return v0
.end method

.method public static N()I
    .locals 1

    .line 576
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->A()I

    move-result v0

    return v0
.end method

.method public static O()I
    .locals 1

    .line 579
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->B()I

    move-result v0

    return v0
.end method

.method public static P()I
    .locals 1

    .line 582
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->C()I

    move-result v0

    return v0
.end method

.method public static Q()I
    .locals 1

    .line 585
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->D()I

    move-result v0

    return v0
.end method

.method public static R()I
    .locals 1

    .line 588
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->E()I

    move-result v0

    return v0
.end method

.method public static S()Z
    .locals 1

    .line 591
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->x()Z

    move-result v0

    return v0
.end method

.method public static T()Ljava/lang/String;
    .locals 1

    .line 593
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static U()Z
    .locals 1

    .line 594
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->G()Z

    move-result v0

    return v0
.end method

.method public static V()Z
    .locals 1

    .line 595
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->H()Z

    move-result v0

    return v0
.end method

.method public static W()J
    .locals 2

    .line 597
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public static X()Z
    .locals 1

    .line 600
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->J()Z

    move-result v0

    return v0
.end method

.method public static Y()Z
    .locals 1

    .line 603
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->K()Z

    move-result v0

    return v0
.end method

.method public static Z()Z
    .locals 1

    .line 606
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->L()Z

    move-result v0

    return v0
.end method

.method static synthetic a(J)J
    .locals 0

    .line 46
    sput-wide p0, Lcom/roblox/client/b;->f:J

    return-wide p0
.end method

.method static synthetic a(Lcom/roblox/client/b$c;)Lcom/roblox/client/b$c;
    .locals 0

    .line 46
    sput-object p0, Lcom/roblox/client/b;->e:Lcom/roblox/client/b$c;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/roblox/client/m/a;
    .locals 1

    .line 57
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0, p0}, Lcom/roblox/client/m/e;->a(Ljava/lang/String;)Lcom/roblox/client/m/a;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 5

    .line 118
    invoke-static {}, Lcom/roblox/client/b;->cH()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    sget-object v0, Lcom/roblox/client/b;->e:Lcom/roblox/client/b$c;

    sget-object v1, Lcom/roblox/client/b$c;->a:Lcom/roblox/client/b$c;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    sget-wide v0, Lcom/roblox/client/b;->f:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 126
    :cond_1
    sget-object v0, Lcom/roblox/client/b$c;->b:Lcom/roblox/client/b$c;

    sput-object v0, Lcom/roblox/client/b;->e:Lcom/roblox/client/b$c;

    .line 127
    new-instance v0, Lcom/roblox/client/b$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/b$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/roblox/client/b;->a(Lcom/roblox/client/b$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/roblox/client/b$b;)V
    .locals 3

    .line 80
    invoke-static {}, Lcom/roblox/client/u;->Z()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchFromServer: URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidAppSettings"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Lcom/roblox/client/b$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/roblox/client/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/b$b;)V

    .line 83
    new-instance p0, Lcom/roblox/client/http/a/b;

    invoke-direct {p0}, Lcom/roblox/client/http/a/b;-><init>()V

    invoke-virtual {v1, p0}, Lcom/roblox/client/http/c;->a(Lcom/roblox/client/http/a/d;)V

    .line 84
    invoke-virtual {v1}, Lcom/roblox/client/http/c;->c()V

    return-void
.end method

.method private static a(Lcom/roblox/client/b$b;)V
    .locals 3

    .line 92
    invoke-static {}, Lcom/roblox/client/u;->Z()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromServer: URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidAppSettings"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v1, Lcom/roblox/client/http/c;

    new-instance v2, Lcom/roblox/client/b$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/b$1;-><init>(Lcom/roblox/client/b$b;)V

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/http/c;-><init>(Ljava/lang/String;Lcom/roblox/client/http/l;)V

    .line 106
    invoke-virtual {v1}, Lcom/roblox/client/http/c;->c()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;I)V
    .locals 5

    .line 335
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->a()Ljava/util/Set;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 340
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 341
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 342
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/m/a;

    .line 343
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 347
    :try_start_0
    instance-of v3, v1, Lcom/roblox/client/m/a$a;

    if-eqz v3, :cond_1

    .line 348
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .line 350
    :cond_1
    instance-of v3, v1, Lcom/roblox/client/m/a$d;

    if-eqz v3, :cond_2

    .line 351
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    .line 353
    :cond_2
    instance-of v3, v1, Lcom/roblox/client/m/a$c;

    if-eqz v3, :cond_3

    .line 354
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 356
    :cond_3
    instance-of v3, v1, Lcom/roblox/client/m/a$b;

    if-eqz v3, :cond_4

    .line 357
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1

    .line 360
    :cond_4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    :goto_1
    invoke-virtual {v1, v3, p1}, Lcom/roblox/client/m/a;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    invoke-virtual {v1, p1}, Lcom/roblox/client/m/a;->a(I)V

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading value for setting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidAppSettings"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_5
    invoke-virtual {v1, p1}, Lcom/roblox/client/m/a;->a(I)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 326
    :goto_0
    invoke-static {p0, p1}, Lcom/roblox/client/b;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 69
    sget-boolean v0, Lcom/roblox/client/b;->a:Z

    return v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcom/roblox/client/b;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 46
    sput-boolean p0, Lcom/roblox/client/b;->a:Z

    return p0
.end method

.method public static aA()Z
    .locals 1

    .line 703
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bw()Z

    move-result v0

    return v0
.end method

.method public static aB()Ljava/lang/String;
    .locals 1

    .line 707
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->an()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aC()I
    .locals 1

    .line 710
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ao()I

    move-result v0

    return v0
.end method

.method public static aD()Ljava/lang/String;
    .locals 1

    .line 713
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aE()Ljava/lang/String;
    .locals 1

    .line 716
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aF()Z
    .locals 1

    .line 719
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ar()Z

    move-result v0

    return v0
.end method

.method public static aG()Z
    .locals 1

    .line 723
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->as()Z

    move-result v0

    return v0
.end method

.method public static aH()Z
    .locals 1

    .line 726
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->at()Z

    move-result v0

    return v0
.end method

.method public static aI()I
    .locals 1

    .line 727
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->au()I

    move-result v0

    return v0
.end method

.method public static aJ()Z
    .locals 1

    .line 730
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->av()Z

    move-result v0

    return v0
.end method

.method public static aK()Ljava/lang/String;
    .locals 1

    .line 732
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aL()Z
    .locals 1

    .line 736
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ax()Z

    move-result v0

    return v0
.end method

.method public static aM()Z
    .locals 1

    .line 737
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ay()Z

    move-result v0

    return v0
.end method

.method public static aN()Z
    .locals 1

    .line 738
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aA()Z

    move-result v0

    return v0
.end method

.method public static aO()Z
    .locals 1

    .line 739
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->az()Z

    move-result v0

    return v0
.end method

.method public static aP()Z
    .locals 1

    .line 742
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aC()Z

    move-result v0

    return v0
.end method

.method public static aQ()Z
    .locals 1

    .line 746
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aD()Z

    move-result v0

    return v0
.end method

.method public static aR()Ljava/lang/String;
    .locals 1

    .line 750
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aS()Ljava/lang/String;
    .locals 1

    .line 754
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aT()Ljava/lang/String;
    .locals 1

    .line 758
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aU()Ljava/lang/String;
    .locals 1

    .line 762
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aV()I
    .locals 1

    .line 766
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aI()I

    move-result v0

    return v0
.end method

.method public static aW()I
    .locals 1

    .line 770
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aJ()I

    move-result v0

    return v0
.end method

.method public static aX()I
    .locals 1

    .line 774
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aL()I

    move-result v0

    return v0
.end method

.method public static aY()I
    .locals 1

    .line 778
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aK()I

    move-result v0

    return v0
.end method

.method public static aZ()Ljava/lang/String;
    .locals 1

    .line 786
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aa()Z
    .locals 1

    .line 609
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->M()Z

    move-result v0

    return v0
.end method

.method public static ab()Z
    .locals 1

    .line 613
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->N()Z

    move-result v0

    return v0
.end method

.method public static ac()J
    .locals 2

    .line 614
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ad()Z
    .locals 1

    .line 617
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bg()Z

    move-result v0

    return v0
.end method

.method public static ae()I
    .locals 1

    .line 624
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->Q()I

    move-result v0

    return v0
.end method

.method public static af()I
    .locals 1

    .line 625
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->R()I

    move-result v0

    return v0
.end method

.method public static ag()Z
    .locals 1

    .line 628
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->S()Z

    move-result v0

    return v0
.end method

.method public static ah()Z
    .locals 1

    .line 632
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->T()Z

    move-result v0

    return v0
.end method

.method public static ai()Z
    .locals 1

    .line 636
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->V()Z

    move-result v0

    return v0
.end method

.method public static aj()Z
    .locals 1

    .line 640
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->U()Z

    move-result v0

    return v0
.end method

.method public static ak()Z
    .locals 1

    .line 644
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->W()Z

    move-result v0

    return v0
.end method

.method public static al()Z
    .locals 1

    .line 648
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->X()Z

    move-result v0

    return v0
.end method

.method public static am()Z
    .locals 1

    .line 652
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->Y()Z

    move-result v0

    return v0
.end method

.method public static an()Z
    .locals 1

    .line 656
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->Z()Z

    move-result v0

    return v0
.end method

.method public static ao()Z
    .locals 1

    .line 659
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aa()Z

    move-result v0

    return v0
.end method

.method public static ap()Z
    .locals 1

    .line 662
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ab()Z

    move-result v0

    return v0
.end method

.method public static aq()Z
    .locals 1

    .line 665
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ac()Z

    move-result v0

    return v0
.end method

.method public static ar()Z
    .locals 1

    .line 667
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ad()Z

    move-result v0

    return v0
.end method

.method public static as()Z
    .locals 1

    .line 669
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ae()Z

    move-result v0

    return v0
.end method

.method public static at()Z
    .locals 1

    .line 671
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ag()Z

    move-result v0

    return v0
.end method

.method public static au()Z
    .locals 1

    .line 675
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ah()Z

    move-result v0

    return v0
.end method

.method public static av()Z
    .locals 1

    .line 679
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ai()Z

    move-result v0

    return v0
.end method

.method public static aw()I
    .locals 1

    .line 683
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aj()I

    move-result v0

    return v0
.end method

.method public static ax()Ljava/lang/String;
    .locals 1

    .line 687
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ay()Ljava/lang/String;
    .locals 1

    .line 691
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->al()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static az()Ljava/lang/String;
    .locals 1

    .line 695
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->am()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 5

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_Bucket_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 400
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 406
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic b(J)J
    .locals 0

    .line 46
    sput-wide p0, Lcom/roblox/client/b;->c:J

    return-wide p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 158
    invoke-static {p0}, Lcom/roblox/client/b;->d(Landroid/content/Context;)V

    .line 159
    invoke-static {p0}, Lcom/roblox/client/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcom/roblox/client/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static b()Z
    .locals 2

    .line 72
    sget-object v0, Lcom/roblox/client/b;->e:Lcom/roblox/client/b$c;

    sget-object v1, Lcom/roblox/client/b$c;->c:Lcom/roblox/client/b$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bA()Z
    .locals 1

    .line 893
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bz()Z

    move-result v0

    return v0
.end method

.method public static bB()Ljava/lang/String;
    .locals 1

    .line 897
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bC()I
    .locals 1

    .line 901
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bD()I

    move-result v0

    return v0
.end method

.method public static bD()Ljava/lang/String;
    .locals 1

    .line 905
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bE()Z
    .locals 1

    .line 909
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bA()Z

    move-result v0

    return v0
.end method

.method public static bF()Z
    .locals 1

    .line 913
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bC()Z

    move-result v0

    return v0
.end method

.method public static bG()Z
    .locals 1

    .line 917
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bF()Z

    move-result v0

    return v0
.end method

.method public static bH()Z
    .locals 1

    .line 920
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bG()Z

    move-result v0

    return v0
.end method

.method public static bI()I
    .locals 1

    .line 921
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bH()I

    move-result v0

    return v0
.end method

.method public static bJ()Ljava/lang/String;
    .locals 1

    .line 924
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bK()Z
    .locals 1

    .line 930
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bL()Z

    move-result v0

    return v0
.end method

.method public static bL()I
    .locals 1

    .line 934
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bN()I

    move-result v0

    return v0
.end method

.method public static bM()Z
    .locals 1

    .line 938
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bO()Z

    move-result v0

    return v0
.end method

.method public static bN()Z
    .locals 1

    .line 942
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bP()Z

    move-result v0

    return v0
.end method

.method public static bO()Z
    .locals 2

    .line 947
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bP()Z
    .locals 1

    .line 955
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bR()Z

    move-result v0

    return v0
.end method

.method public static bQ()Z
    .locals 1

    .line 959
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bS()Z

    move-result v0

    return v0
.end method

.method public static bR()Z
    .locals 1

    .line 962
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bT()Z

    move-result v0

    return v0
.end method

.method public static bS()Z
    .locals 1

    .line 966
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bU()Z

    move-result v0

    return v0
.end method

.method public static bT()Z
    .locals 1

    .line 970
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bV()Z

    move-result v0

    return v0
.end method

.method public static bU()Z
    .locals 1

    .line 974
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bW()Z

    move-result v0

    return v0
.end method

.method public static bV()Z
    .locals 1

    .line 978
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bX()Z

    move-result v0

    return v0
.end method

.method public static bW()Z
    .locals 1

    .line 983
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bY()Z

    move-result v0

    return v0
.end method

.method public static bX()Z
    .locals 1

    .line 991
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bZ()Z

    move-result v0

    return v0
.end method

.method public static bY()Z
    .locals 1

    .line 995
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ca()Z

    move-result v0

    return v0
.end method

.method public static bZ()Z
    .locals 1

    .line 999
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cb()Z

    move-result v0

    return v0
.end method

.method public static ba()Ljava/lang/String;
    .locals 1

    .line 789
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bb()Ljava/lang/String;
    .locals 1

    .line 792
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bc()Ljava/lang/String;
    .locals 1

    .line 796
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bd()Ljava/lang/String;
    .locals 1

    .line 800
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static be()Z
    .locals 1

    .line 808
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bc()Z

    move-result v0

    return v0
.end method

.method public static bf()Z
    .locals 1

    .line 816
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bd()Z

    move-result v0

    return v0
.end method

.method public static bg()Z
    .locals 1

    .line 820
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->be()Z

    move-result v0

    return v0
.end method

.method public static bh()Z
    .locals 1

    .line 824
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bf()Z

    move-result v0

    return v0
.end method

.method public static bi()I
    .locals 1

    .line 828
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bi()I

    move-result v0

    return v0
.end method

.method public static bj()I
    .locals 1

    .line 832
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bk()I

    move-result v0

    return v0
.end method

.method public static bk()I
    .locals 1

    .line 835
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bl()I

    move-result v0

    return v0
.end method

.method public static bl()I
    .locals 1

    .line 838
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bm()I

    move-result v0

    return v0
.end method

.method public static bm()I
    .locals 1

    .line 841
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bn()I

    move-result v0

    return v0
.end method

.method public static bn()Ljava/lang/String;
    .locals 1

    .line 844
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bo()I
    .locals 1

    .line 847
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bo()I

    move-result v0

    return v0
.end method

.method public static bp()I
    .locals 1

    .line 850
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bp()I

    move-result v0

    return v0
.end method

.method public static bq()I
    .locals 1

    .line 853
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bq()I

    move-result v0

    return v0
.end method

.method public static br()Z
    .locals 1

    .line 856
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->br()Z

    move-result v0

    return v0
.end method

.method public static bs()Z
    .locals 1

    .line 859
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bt()Z

    move-result v0

    return v0
.end method

.method public static bt()Ljava/lang/String;
    .locals 1

    .line 862
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bu()Z
    .locals 1

    .line 865
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bv()Z

    move-result v0

    return v0
.end method

.method public static bv()Z
    .locals 1

    .line 869
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bI()Z

    move-result v0

    return v0
.end method

.method public static bw()Z
    .locals 1

    .line 873
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bK()Z

    move-result v0

    return v0
.end method

.method public static bx()Z
    .locals 1

    .line 877
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bM()Z

    move-result v0

    return v0
.end method

.method public static by()Z
    .locals 1

    .line 885
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bx()Z

    move-result v0

    return v0
.end method

.method public static bz()Z
    .locals 1

    .line 889
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->by()Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .line 110
    sget-object v0, Lcom/roblox/client/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/roblox/client/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 111
    invoke-static {}, Lcom/roblox/client/b;->cI()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 112
    sget-object v0, Lcom/roblox/client/b;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    sput-object p0, Lcom/roblox/client/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/roblox/client/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 149
    invoke-static {p0}, Lcom/roblox/client/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "{}"

    if-eqz p0, :cond_0

    const-string v1, "AndroidAppSettingsCache"

    .line 151
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cA()Z
    .locals 1

    .line 1136
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cD()Z

    move-result v0

    return v0
.end method

.method public static cB()Z
    .locals 1

    .line 1140
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cJ()Z

    move-result v0

    return v0
.end method

.method static synthetic cC()J
    .locals 2

    .line 46
    invoke-static {}, Lcom/roblox/client/b;->cH()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic cD()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/roblox/client/b;->cE()V

    return-void
.end method

.method private static cE()V
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-static {v0}, Lcom/roblox/client/b;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static cF()V
    .locals 2

    .line 411
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/roblox/client/b;->g:I

    return-void
.end method

.method private static cG()I
    .locals 5

    .line 429
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/j;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x64

    .line 431
    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :cond_0
    const/16 v0, 0x63

    return v0
.end method

.method private static cH()J
    .locals 4

    .line 621
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->P()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private static cI()J
    .locals 4

    .line 951
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bQ()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static ca()Z
    .locals 1

    .line 1003
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cc()Z

    move-result v0

    return v0
.end method

.method public static cb()Z
    .locals 1

    .line 1007
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cd()Z

    move-result v0

    return v0
.end method

.method public static cc()Z
    .locals 1

    .line 1011
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ce()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static cd()Z
    .locals 1

    .line 1015
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cf()Z

    move-result v0

    return v0
.end method

.method public static ce()Z
    .locals 1

    .line 1019
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cg()Z

    move-result v0

    return v0
.end method

.method public static cf()Z
    .locals 1

    .line 1023
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ch()Z

    move-result v0

    return v0
.end method

.method public static cg()Z
    .locals 1

    .line 1035
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ci()Z

    move-result v0

    return v0
.end method

.method public static ch()Z
    .locals 1

    .line 1039
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cj()Z

    move-result v0

    return v0
.end method

.method public static ci()Z
    .locals 1

    .line 1043
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ck()Z

    move-result v0

    return v0
.end method

.method public static cj()Z
    .locals 1

    .line 1047
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cl()Z

    move-result v0

    return v0
.end method

.method public static ck()Z
    .locals 1

    .line 1051
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->co()Z

    move-result v0

    return v0
.end method

.method public static cl()Z
    .locals 1

    .line 1055
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cm()Z

    move-result v0

    return v0
.end method

.method public static cm()Z
    .locals 1

    .line 1063
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cn()Z

    move-result v0

    return v0
.end method

.method public static cn()Z
    .locals 1

    .line 1067
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cp()Z

    move-result v0

    return v0
.end method

.method public static co()Z
    .locals 1

    .line 1071
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cq()Z

    move-result v0

    return v0
.end method

.method public static cp()Z
    .locals 1

    .line 1075
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cr()Z

    move-result v0

    return v0
.end method

.method public static cq()Z
    .locals 1

    .line 1079
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cs()Z

    move-result v0

    return v0
.end method

.method public static cr()Z
    .locals 1

    .line 1087
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->ct()Z

    move-result v0

    return v0
.end method

.method public static cs()Z
    .locals 1

    .line 1091
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cu()Z

    move-result v0

    return v0
.end method

.method public static ct()Z
    .locals 1

    .line 1095
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cv()Z

    move-result v0

    return v0
.end method

.method public static cu()Z
    .locals 1

    .line 1099
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cw()Z

    move-result v0

    return v0
.end method

.method public static cv()Z
    .locals 2

    const-string v0, "UniversalStartupRollout"

    .line 1103
    invoke-static {v0}, Lcom/roblox/client/b;->b(Ljava/lang/String;)I

    move-result v0

    .line 1104
    sget-object v1, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v1}, Lcom/roblox/client/m/e;->cx()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static cw()Z
    .locals 1

    .line 1108
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cy()Z

    move-result v0

    return v0
.end method

.method public static cx()Z
    .locals 1

    .line 1124
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cB()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static cy()Z
    .locals 1

    .line 1128
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cz()Z

    move-result v0

    return v0
.end method

.method public static cz()Z
    .locals 1

    .line 1132
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()V
    .locals 0

    .line 383
    invoke-static {}, Lcom/roblox/client/b;->cF()V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    .line 268
    invoke-static {p0}, Lcom/roblox/client/b;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    .line 269
    invoke-static {p0, v0}, Lcom/roblox/client/b;->a(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 298
    invoke-static {p0}, Lcom/roblox/client/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 299
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "AndroidAppSettingsCache"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static e()I
    .locals 5

    .line 418
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x64

    .line 420
    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    .line 273
    invoke-static {p0}, Lcom/roblox/client/i/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 275
    invoke-static {p0, v0}, Lcom/roblox/client/b;->a(Lorg/json/JSONObject;Z)V

    .line 279
    :cond_0
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->readLocalFlags()Lcom/roblox/engine/jni/model/ClientLocalFlags;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Lcom/roblox/engine/jni/model/ClientLocalFlags;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localFlags size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roblox/engine/jni/model/ClientLocalFlags;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAppSettings"

    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/roblox/engine/jni/model/ClientLocalFlags;->getAll()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/roblox/client/b;->a(Lorg/json/JSONObject;I)V

    .line 287
    :cond_1
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 288
    invoke-static {}, Lcom/roblox/client/i/c;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 289
    invoke-static {}, Lcom/roblox/client/i/c;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/roblox/client/b;->a(Lorg/json/JSONObject;I)V

    :cond_2
    return-void
.end method

.method private static f(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p0, :cond_0

    .line 307
    invoke-static {p0}, Lcom/roblox/client/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_0
    const-string v0, "{}"

    if-eqz p0, :cond_1

    const-string v1, "AndroidAppSettingsCache"

    .line 309
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_1
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 314
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    return-object p0
.end method

.method public static f()Z
    .locals 2

    .line 439
    sget v0, Lcom/roblox/client/b;->g:I

    invoke-static {}, Lcom/roblox/client/b;->s()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 3

    .line 443
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bs()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    invoke-static {}, Lcom/roblox/client/b;->e()I

    move-result v0

    invoke-static {}, Lcom/roblox/client/b;->bo()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static h()J
    .locals 2

    .line 453
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->bh()J

    move-result-wide v0

    return-wide v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 465
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Z
    .locals 2

    .line 473
    invoke-static {}, Lcom/roblox/client/b;->cG()I

    move-result v0

    sget-object v1, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v1}, Lcom/roblox/client/m/e;->aU()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static k()Ljava/lang/Boolean;
    .locals 4

    .line 477
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 478
    sget-object v1, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v1}, Lcom/roblox/client/m/e;->aV()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 482
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 486
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->aX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Z
    .locals 2

    .line 490
    invoke-static {}, Lcom/roblox/client/b;->cG()I

    move-result v0

    sget-object v1, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v1}, Lcom/roblox/client/m/e;->aB()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o()Z
    .locals 1

    .line 502
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->b()Z

    move-result v0

    return v0
.end method

.method public static p()J
    .locals 2

    .line 505
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    .line 507
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Z
    .locals 1

    .line 509
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->c()Z

    move-result v0

    return v0
.end method

.method public static s()I
    .locals 1

    .line 512
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->d()I

    move-result v0

    return v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    .line 516
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()I
    .locals 1

    .line 520
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->f()I

    move-result v0

    return v0
.end method

.method public static v()I
    .locals 1

    .line 524
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->g()I

    move-result v0

    return v0
.end method

.method public static w()Ljava/lang/String;
    .locals 1

    .line 529
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x()Z
    .locals 1

    .line 531
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->k()Z

    move-result v0

    return v0
.end method

.method public static y()Z
    .locals 1

    .line 532
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->l()Z

    move-result v0

    return v0
.end method

.method public static z()Ljava/lang/String;
    .locals 1

    .line 534
    sget-object v0, Lcom/roblox/client/b;->d:Lcom/roblox/client/m/e;

    invoke-interface {v0}, Lcom/roblox/client/m/e;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
