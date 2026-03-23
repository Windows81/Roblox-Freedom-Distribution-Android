.class public final Lcom/google/android/gms/internal/measurement/do;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/jy<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/jy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/jy<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/do;->a:Lcom/google/android/gms/internal/measurement/jy;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/do;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/measurement/do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/measurement/do;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/dn;->a()Lcom/google/android/gms/internal/measurement/kj;

    move-result-object p2

    const-wide/high16 p3, -0x3ff8000000000000L    # -3.0

    invoke-virtual {p2, p0, p3, p4}, Lcom/google/android/gms/internal/measurement/kj;->a(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/jy;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/do;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/jy;)V

    return-object p1
.end method

.method static a(Ljava/lang/String;II)Lcom/google/android/gms/internal/measurement/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/measurement/do;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/dn;->a()Lcom/google/android/gms/internal/measurement/kj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/kj;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/jy;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/do;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/jy;)V

    return-object p2
.end method

.method static a(Ljava/lang/String;JJ)Lcom/google/android/gms/internal/measurement/do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/measurement/do;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/dn;->a()Lcom/google/android/gms/internal/measurement/kj;

    move-result-object p4

    invoke-virtual {p4, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/kj;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/jy;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/measurement/do;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/jy;)V

    return-object p3
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/measurement/do;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/dn;->a()Lcom/google/android/gms/internal/measurement/kj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/kj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/jy;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/do;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/jy;)V

    return-object p2
.end method

.method static a(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/measurement/do<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/measurement/do;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/dn;->a()Lcom/google/android/gms/internal/measurement/kj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/kj;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/jy;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/do;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/jy;)V

    return-object p2
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/do;->a:Lcom/google/android/gms/internal/measurement/jy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/jy;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/do;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/do;->a:Lcom/google/android/gms/internal/measurement/jy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/jy;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
