.class public final Lcom/google/android/gms/internal/ads/pu;
.super Lcom/google/android/gms/internal/ads/po;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/text/DecimalFormat;


# instance fields
.field private d:Ljava/io/File;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/pu;->b:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/pu;->c:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/pc;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/pc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Context.getCacheDir() returned null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "admobVideoStreams"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v1, "Could not create preload cache directory at "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    const-string v1, "Could not set cache file permissions at "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private final a(Ljava/io/File;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".done"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const-string v3, "noCacheDir"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/ads/aro;->n:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :cond_1
    :goto_2
    if-nez v2, :cond_0

    const-string v2, "Unable to expire stream cache"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "expireFailed"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move/from16 v26, v2

    move v2, v3

    move/from16 v3, v26

    :goto_3
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".done"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v2, 0x0

    move v8, v2

    :goto_4
    if-ge v8, v10, :cond_6

    aget-object v6, v9, v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".done"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v11, v2, v4

    if-gez v11, :cond_28

    move-object v4, v6

    :goto_5
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move-object v7, v4

    move-wide v4, v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/pu;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v2, v3

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->a()Lcom/google/android/gms/internal/ads/ly;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ly;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-direct {v13, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/pu;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    const-string v4, "Stream cache hit at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/pu;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    :goto_7
    sget-object v3, Lcom/google/android/gms/internal/ads/pu;->b:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/pu;->b:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v4, "Stream cache already in progress at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inProgress"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    goto :goto_7

    :cond_b
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    sget-object v2, Lcom/google/android/gms/internal/ads/pu;->b:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    const-string v11, "error"

    const/4 v10, 0x0

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->q()Lcom/google/android/gms/internal/ads/np;

    sget-object v2, Lcom/google/android/gms/internal/ads/aro;->s:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_9
    add-int/lit8 v4, v2, 0x1

    const/16 v2, 0x14

    if-gt v4, v2, :cond_15

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v6, v2, Ljava/net/HttpURLConnection;

    if-nez v6, :cond_f

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid protocol."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    :goto_a
    instance-of v6, v2, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->i()Lcom/google/android/gms/internal/ads/in;

    move-result-object v6

    const-string v7, "VideoStreamFullFileCache.preload"

    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/internal/ads/in;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_d
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_b

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/pu;->e:Z

    if-eqz v5, :cond_26

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preload aborted for URL \""

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->d(Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_e

    const-string v5, "Could not delete partial cache file at "

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/pu;->b:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    :try_start_4
    check-cast v2, Ljava/net/HttpURLConnection;

    new-instance v6, Lcom/google/android/gms/internal/ads/mc;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/mc;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8}, Lcom/google/android/gms/internal/ads/mc;->a(Ljava/net/HttpURLConnection;[B)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v6, v2, v8}, Lcom/google/android/gms/internal/ads/mc;->a(Ljava/net/HttpURLConnection;I)V

    div-int/lit8 v6, v8, 0x64

    const/4 v8, 0x3

    if-ne v6, v8, :cond_16

    const-string v6, "Location"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_10

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing Location header in redirect"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_a

    :cond_10
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Protocol is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    const-string v12, "http"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "https"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    new-instance v4, Ljava/io/IOException;

    const-string v6, "Unsupported scheme: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_13
    const-string v12, "Redirecting to "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v2, v4

    move-object v3, v6

    goto/16 :goto_9

    :cond_14
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_15
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Too many redirects (20)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_18

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v3, 0x190

    if-lt v6, v3, :cond_18

    const-string v4, "badUrl"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    const-string v2, "HTTP request failed. Code: "

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_c

    move-result-object v3

    :goto_10
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x20

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "HTTP status code "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_d

    :catch_2
    move-exception v2

    goto/16 :goto_a

    :cond_17
    :try_start_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_10

    :catch_3
    move-exception v2

    move-object v3, v10

    goto/16 :goto_a

    :cond_18
    :try_start_8
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    if-gez v7, :cond_1a

    const-string v3, "Stream cache aborted, missing content-length header at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentLengthMissing"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/pu;->b:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_1a
    sget-object v3, Lcom/google/android/gms/internal/ads/pu;->c:Ljava/text/DecimalFormat;

    int-to-long v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/google/android/gms/internal/ads/aro;->o:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v7, v15, :cond_1c

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Content length "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeds limit at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    const-string v3, "File too big for full file cache. Size: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sizeExceeded"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/pu;->b:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Caching "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v16

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->l()Lcom/google/android/gms/common/util/d;

    move-result-object v19

    const/4 v6, 0x0

    invoke-interface/range {v19 .. v19}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v20

    sget-object v2, Lcom/google/android/gms/internal/ads/aro;->r:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v22, Lcom/google/android/gms/internal/ads/ln;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ln;-><init>(J)V

    sget-object v2, Lcom/google/android/gms/internal/ads/aro;->q:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    :cond_1d
    :goto_13
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ltz v2, :cond_23

    add-int/2addr v6, v2

    if-le v6, v15, :cond_1f

    const-string v4, "sizeExceeded"
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e

    :try_start_a
    const-string v2, "File too big for full file cache. Size: "

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_7

    move-result-object v3

    :goto_14
    :try_start_b
    new-instance v2, Ljava/io/IOException;

    const-string v5, "stream cache file size limit exceeded"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    :catch_4
    move-exception v2

    move-object v5, v12

    goto/16 :goto_a

    :cond_1e
    :try_start_c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_14

    :catch_5
    move-exception v2

    move-object v3, v10

    move-object v5, v12

    goto/16 :goto_a

    :cond_1f
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_20
    invoke-virtual/range {v17 .. v18}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gtz v2, :cond_20

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {v19 .. v19}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    sub-long v2, v2, v20

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v24

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    const-string v4, "downloadTimeout"
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e

    :try_start_e
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Timeout exceeded. Limit: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7

    move-result-object v3

    :try_start_f
    new-instance v2, Ljava/io/IOException;

    const-string v5, "stream cache time limit exceeded"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6

    :catch_6
    move-exception v2

    move-object v5, v12

    goto/16 :goto_a

    :cond_21
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/pu;->e:Z

    if-eqz v2, :cond_22

    const-string v4, "externalAbort"
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_e

    :try_start_11
    new-instance v2, Ljava/io/IOException;

    const-string v3, "abort requested"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_7

    :catch_7
    move-exception v2

    move-object v3, v10

    move-object v5, v12

    goto/16 :goto_a

    :cond_22
    :try_start_12
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/ln;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v23, Lcom/google/android/gms/internal/ads/ly;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/pp;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/pp;-><init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;IIZ)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    :catch_8
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    goto/16 :goto_a

    :cond_23
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_24

    sget-object v2, Lcom/google/android/gms/internal/ads/pu;->c:Ljava/text/DecimalFormat;

    int-to-long v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Preloaded "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;)V

    :cond_24
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :goto_15
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/google/android/gms/internal/ads/pu;->b:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_e

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_25
    :try_start_13
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_15

    :catch_9
    move-exception v2

    goto :goto_15

    :cond_26
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Preload failed for URL \""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/jd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :cond_27
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_a
    move-exception v5

    goto/16 :goto_b

    :catch_b
    move-exception v5

    goto/16 :goto_b

    :catch_c
    move-exception v2

    move-object v3, v10

    goto/16 :goto_a

    :catch_d
    move-exception v2

    goto/16 :goto_a

    :catch_e
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    goto/16 :goto_a

    :cond_28
    move-wide v2, v4

    move-object v4, v7

    goto/16 :goto_5
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pu;->e:Z

    return-void
.end method
