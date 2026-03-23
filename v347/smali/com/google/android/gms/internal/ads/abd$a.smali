.class public Lcom/google/android/gms/internal/ads/abd$a;
.super Lcom/google/android/gms/internal/ads/zl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/abd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/abd",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/abd$a",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zl",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/ads/abd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/abd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/abd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abd$a;->b:Lcom/google/android/gms/internal/ads/abd;

    sget v0, Lcom/google/android/gms/internal/ads/abd$e;->d:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/abd;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/abd;Lcom/google/android/gms/internal/ads/abd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/acx;->a()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/acx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/add;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/add;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/abd;)Lcom/google/android/gms/internal/ads/abd$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abd$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;Lcom/google/android/gms/internal/ads/abd;)V

    return-object p0
.end method

.method public final synthetic a()Lcom/google/android/gms/internal/ads/zl;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd$a;

    return-object v0
.end method

.method protected final synthetic a(Lcom/google/android/gms/internal/ads/zk;)Lcom/google/android/gms/internal/ads/zl;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;)Lcom/google/android/gms/internal/ads/abd$a;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    sget v1, Lcom/google/android/gms/internal/ads/abd$e;->d:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abd;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;Lcom/google/android/gms/internal/ads/abd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    :cond_0
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/abd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget v1, Lcom/google/android/gms/internal/ads/abd$e;->a:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abd;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/ads/adv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/adv;-><init>(Lcom/google/android/gms/internal/ads/ack;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/acx;->a()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/acx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/add;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/add;->c(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/acx;->a()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/acx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/add;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/add;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_3

    sget v4, Lcom/google/android/gms/internal/ads/abd$e;->b:I

    if-eqz v3, :cond_4

    move-object v1, v0

    :goto_2
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/abd;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->b:Lcom/google/android/gms/internal/ads/abd;

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    sget v1, Lcom/google/android/gms/internal/ads/abd$e;->e:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abd;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd$a;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    :goto_0
    check-cast v1, Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abd$a;->a(Lcom/google/android/gms/internal/ads/abd;)Lcom/google/android/gms/internal/ads/abd$a;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/acx;->a()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/acx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/add;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/add;->c(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    goto :goto_0
.end method

.method public final synthetic d()Lcom/google/android/gms/internal/ads/ack;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/acx;->a()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/acx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/add;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/add;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    goto :goto_0
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/ads/ack;
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget v1, Lcom/google/android/gms/internal/ads/abd$e;->a:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abd;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/ads/adv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/adv;-><init>(Lcom/google/android/gms/internal/ads/ack;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/acx;->a()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/acx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/add;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/add;->c(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/abd$a;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/acx;->a()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/acx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/add;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/add;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_3

    sget v4, Lcom/google/android/gms/internal/ads/abd$e;->b:I

    if-eqz v3, :cond_4

    move-object v1, v0

    :goto_2
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/abd;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->a:Lcom/google/android/gms/internal/ads/abd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abd;->a(Lcom/google/android/gms/internal/ads/abd;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic p()Lcom/google/android/gms/internal/ads/ack;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd$a;->b:Lcom/google/android/gms/internal/ads/abd;

    return-object v0
.end method
