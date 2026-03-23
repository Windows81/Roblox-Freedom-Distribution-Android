.class public final Lcom/google/android/gms/internal/measurement/iv;
.super Lcom/google/android/gms/internal/measurement/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/f<",
        "Lcom/google/android/gms/internal/measurement/iv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lcom/google/android/gms/internal/measurement/iv;


# instance fields
.field public c:Lcom/google/android/gms/internal/measurement/iy;

.field public d:Lcom/google/android/gms/internal/measurement/iw;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/iv;->b:I

    return-void
.end method

.method public static e()[Lcom/google/android/gms/internal/measurement/iv;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/iv;->g:[Lcom/google/android/gms/internal/measurement/iv;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/measurement/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/iv;->g:[Lcom/google/android/gms/internal/measurement/iv;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/iv;

    sput-object v1, Lcom/google/android/gms/internal/measurement/iv;->g:[Lcom/google/android/gms/internal/measurement/iv;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/iv;->g:[Lcom/google/android/gms/internal/measurement/iv;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/f;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILcom/google/android/gms/internal/measurement/m;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILcom/google/android/gms/internal/measurement/m;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/d;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/measurement/c;)Lcom/google/android/gms/internal/measurement/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->a()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/f;->a(Lcom/google/android/gms/internal/measurement/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->e:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/measurement/iw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/iw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/measurement/iy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/iy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/c;->a(Lcom/google/android/gms/internal/measurement/m;)V

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILcom/google/android/gms/internal/measurement/m;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILcom/google/android/gms/internal/measurement/m;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/f;->a(Lcom/google/android/gms/internal/measurement/d;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/iv;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/iv;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/iy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/iw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/iv;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/iv;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->f:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/iv;->f:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/iv;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    return v2

    :cond_d
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->c:Lcom/google/android/gms/internal/measurement/iy;

    mul-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/iy;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->d:Lcom/google/android/gms/internal/measurement/iw;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/iw;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/iv;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
