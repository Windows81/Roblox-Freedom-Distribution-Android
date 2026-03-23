.class public final Lcom/google/android/gms/internal/measurement/dx;
.super Lcom/google/android/gms/internal/measurement/fy;


# instance fields
.field private a:C

.field private b:J

.field private c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/measurement/dz;

.field private final e:Lcom/google/android/gms/internal/measurement/dz;

.field private final f:Lcom/google/android/gms/internal/measurement/dz;

.field private final g:Lcom/google/android/gms/internal/measurement/dz;

.field private final h:Lcom/google/android/gms/internal/measurement/dz;

.field private final i:Lcom/google/android/gms/internal/measurement/dz;

.field private final j:Lcom/google/android/gms/internal/measurement/dz;

.field private final k:Lcom/google/android/gms/internal/measurement/dz;

.field private final l:Lcom/google/android/gms/internal/measurement/dz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fc;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/fy;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/google/android/gms/internal/measurement/dx;->a:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/dx;->b:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->d:Lcom/google/android/gms/internal/measurement/dz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->e:Lcom/google/android/gms/internal/measurement/dz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->f:Lcom/google/android/gms/internal/measurement/dz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->g:Lcom/google/android/gms/internal/measurement/dz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->h:Lcom/google/android/gms/internal/measurement/dz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->i:Lcom/google/android/gms/internal/measurement/dz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->j:Lcom/google/android/gms/internal/measurement/dz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->k:Lcom/google/android/gms/internal/measurement/dz;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/dx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->l:Lcom/google/android/gms/internal/measurement/dz;

    return-void
.end method

.method private final I()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/dn;->b:Lcom/google/android/gms/internal/measurement/do;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/do;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->c:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/dx;)C
    .locals 0

    iget-char p0, p0, Lcom/google/android/gms/internal/measurement/dx;->a:C

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/dx;C)C
    .locals 0

    iput-char p1, p0, Lcom/google/android/gms/internal/measurement/dx;->a:C

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/dx;J)J
    .locals 0

    const-wide/16 p1, 0x30a3

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/dx;->b:J

    return-wide p1
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ea;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ea;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez p0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_4

    move-object v0, v2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/dx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/dx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_a

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/dx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ea;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/google/android/gms/internal/measurement/ea;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ea;->a(Lcom/google/android/gms/internal/measurement/ea;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p0, :cond_d

    return-object v2

    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/dx;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/measurement/dx;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p4}, Lcom/google/android/gms/internal/measurement/dx;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/dx;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/dx;->b:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/measurement/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->j:Lcom/google/android/gms/internal/measurement/dz;

    return-object v0
.end method

.method public final B()Lcom/google/android/gms/internal/measurement/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->k:Lcom/google/android/gms/internal/measurement/dz;

    return-object v0
.end method

.method public final C()Lcom/google/android/gms/internal/measurement/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->l:Lcom/google/android/gms/internal/measurement/dz;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->b:Lcom/google/android/gms/internal/measurement/em;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/em;->a()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/measurement/ei;->a:Landroid/util/Pair;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->a()V

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/dx;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/dx;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v0, p4, p5, p6, p7}, Lcom/google/android/gms/internal/measurement/dx;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/dx;->a(ILjava/lang/String;)V

    :cond_0
    if-nez p3, :cond_5

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    invoke-static {p4}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/dx;->q:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/fc;->g()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    const-string p1, "Scheduler not set. Not logging error/warn"

    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/dx;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/fy;->E()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const/16 p3, 0x9

    if-lt p1, p3, :cond_4

    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/dy;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/dy;-><init>(Lcom/google/android/gms/internal/measurement/dx;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method protected final a(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/dx;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->c()V

    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/internal/measurement/cp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->d()Lcom/google/android/gms/internal/measurement/cp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/measurement/gb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->e()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/measurement/ds;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->f()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/measurement/dh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->g()Lcom/google/android/gms/internal/measurement/dh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/measurement/gz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->h()Lcom/google/android/gms/internal/measurement/gz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/measurement/gw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->i()Lcom/google/android/gms/internal/measurement/gw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/common/util/d;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->k()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/internal/measurement/dt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->l()Lcom/google/android/gms/internal/measurement/dt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/internal/measurement/dv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->m()Lcom/google/android/gms/internal/measurement/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/internal/measurement/iq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->n()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/internal/measurement/hy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->o()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/internal/measurement/ex;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->p()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/measurement/dx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/internal/measurement/ei;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/internal/measurement/cy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->s()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v0

    return-object v0
.end method

.method protected final t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final v()Lcom/google/android/gms/internal/measurement/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->d:Lcom/google/android/gms/internal/measurement/dz;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->e:Lcom/google/android/gms/internal/measurement/dz;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/measurement/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->f:Lcom/google/android/gms/internal/measurement/dz;

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->g:Lcom/google/android/gms/internal/measurement/dz;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/measurement/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dx;->i:Lcom/google/android/gms/internal/measurement/dz;

    return-object v0
.end method
