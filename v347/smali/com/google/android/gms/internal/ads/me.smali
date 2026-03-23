.class final Lcom/google/android/gms/internal/ads/me;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/apn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/agm;)V
    .locals 16

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/agm;->b:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/agm;->c:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/agm;->d:J

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/agm;->e:J

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/agm;->f:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/agm;->h:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/agm;->h:Ljava/util/List;

    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/me;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/agm;->a:[B

    array-length v2, v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/me;->a:J

    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/agm;->g:Ljava/util/Map;

    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v15, Lcom/google/android/gms/internal/ads/apn;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/ads/apn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/apn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/me;->b:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/me;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/me;->d:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/me;->e:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/me;->f:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/me;->g:J

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/me;->h:Ljava/util/List;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/ne;)Lcom/google/android/gms/internal/ads/me;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ld;->a(Lcom/google/android/gms/internal/ads/ne;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ld;->a(Lcom/google/android/gms/internal/ads/ne;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ld;->b(Ljava/io/InputStream;)J

    move-result-wide v4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ld;->b(Ljava/io/InputStream;)J

    move-result-wide v6

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ld;->b(Ljava/io/InputStream;)J

    move-result-wide v8

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ld;->b(Ljava/io/InputStream;)J

    move-result-wide v10

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ld;->b(Lcom/google/android/gms/internal/ads/ne;)Ljava/util/List;

    move-result-object v12

    new-instance v1, Lcom/google/android/gms/internal/ads/me;

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/me;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v1
.end method


# virtual methods
.method final a(Ljava/io/OutputStream;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x20150306

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/me;->d:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;J)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/me;->e:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;J)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/me;->f:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;J)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/me;->g:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apn;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/eb;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :goto_2
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ld;->a(Ljava/io/OutputStream;I)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_2
.end method
