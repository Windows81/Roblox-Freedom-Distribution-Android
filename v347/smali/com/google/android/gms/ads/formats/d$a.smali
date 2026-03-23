.class public final Lcom/google/android/gms/ads/formats/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcom/google/android/gms/ads/k;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/ads/formats/d$a;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/formats/d$a;->b:I

    iput-boolean v1, p0, Lcom/google/android/gms/ads/formats/d$a;->c:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/formats/d$a;->e:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/formats/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/d$a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/formats/d$a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/formats/d$a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/formats/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/d$a;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/formats/d$a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/formats/d$a;->e:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/d$a;->d:Lcom/google/android/gms/ads/k;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/ads/formats/d$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/formats/d$a;->b:I

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/ads/k;)Lcom/google/android/gms/ads/formats/d$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/d$a;->d:Lcom/google/android/gms/ads/k;

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/ads/formats/d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/d$a;->a:Z

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/ads/formats/d;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/formats/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/d;-><init>(Lcom/google/android/gms/ads/formats/d$a;Lcom/google/android/gms/ads/formats/l;)V

    return-object v0
.end method

.method public final b(I)Lcom/google/android/gms/ads/formats/d$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/formats/d$a;->e:I

    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/ads/formats/d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/d$a;->c:Z

    return-object p0
.end method
