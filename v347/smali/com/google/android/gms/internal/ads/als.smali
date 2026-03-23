.class public final Lcom/google/android/gms/internal/ads/als;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/alh;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Z

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/als;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/als;->e:Z

    if-gt p2, v1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/als;->f:I

    :goto_0
    if-gtz p3, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/als;->g:I

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/alq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/als;->f:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/alq;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/als;->a:Lcom/google/android/gms/internal/ads/alh;

    return-void

    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/als;->f:I

    goto :goto_0

    :cond_2
    iput p3, p0, Lcom/google/android/gms/internal/ads/als;->g:I

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/alg;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v12, 0x20

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/alt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/alt;-><init>(Lcom/google/android/gms/internal/ads/als;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/alg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/alg;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    if-eqz v0, :cond_c

    move v0, v2

    :goto_1
    array-length v3, v8

    if-ge v0, v3, :cond_c

    aget-object v6, v8, v0

    const-string v3, "\'"

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v4

    move v5, v2

    :goto_2
    add-int/lit8 v10, v3, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-gt v10, v11, :cond_4

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x27

    if-ne v10, v11, :cond_2

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v12, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v10, 0x73

    if-eq v5, v10, :cond_0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v10, 0x53

    if-ne v5, v10, :cond_3

    :cond_0
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eq v5, v10, :cond_1

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v12, :cond_3

    :cond_1
    invoke-virtual {v9, v3, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    :goto_3
    move v5, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v3, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_10

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/als;->d:Ljava/lang/String;

    :goto_5
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/all;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v9

    array-length v3, v9

    iget v5, p0, Lcom/google/android/gms/internal/ads/als;->g:I

    if-lt v3, v5, :cond_b

    move v3, v2

    :goto_6
    array-length v5, v9

    if-ge v3, v5, :cond_a

    const-string v5, ""

    move v6, v2

    :goto_7
    iget v10, p0, Lcom/google/android/gms/internal/ads/als;->g:I

    if-ge v6, v10, :cond_f

    add-int v10, v3, v6

    array-length v11, v9

    if-lt v10, v11, :cond_6

    move v6, v2

    :goto_8
    if-eqz v6, :cond_a

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/als;->b:I

    if-lt v5, v6, :cond_9

    move v0, v2

    :goto_9
    if-eqz v0, :cond_d

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    if-lez v6, :cond_7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    add-int v5, v3, v6

    aget-object v5, v9, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v5, p0, Lcom/google/android/gms/internal/ads/als;->b:I

    if-lt v3, v5, :cond_b

    move v0, v2

    goto :goto_9

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    move v0, v4

    goto :goto_9

    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/alk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/alk;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/als;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/als;->a:Lcom/google/android/gms/internal/ads/alh;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/alh;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/alk;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    const-string v2, "Error while writing hash to byteStream"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/alk;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    move v6, v4

    goto/16 :goto_8

    :cond_10
    move-object v3, v6

    goto/16 :goto_5
.end method
