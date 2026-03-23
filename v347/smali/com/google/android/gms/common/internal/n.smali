.class public Lcom/google/android/gms/common/internal/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/util/SparseIntArray;

.field private b:Lcom/google/android/gms/common/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/e;->a()Lcom/google/android/gms/common/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/n;-><init>(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/n;->b:Lcom/google/android/gms/common/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/android/gms/common/api/a$f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/common/api/a$f;->g()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v6, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-le v4, v3, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v1

    :goto_2
    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->b:Lcom/google/android/gms/common/f;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/common/f;->b(Landroid/content/Context;I)I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    move v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
