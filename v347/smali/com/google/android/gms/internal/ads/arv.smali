.class public abstract Lcom/google/android/gms/internal/ads/arv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/arv;
    .annotation runtime Lcom/google/android/gms/internal/ads/cm;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/ads/arv;
    .annotation runtime Lcom/google/android/gms/internal/ads/cm;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/ads/arv;
    .annotation runtime Lcom/google/android/gms/internal/ads/cm;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/arw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/arw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/arv;

    new-instance v0, Lcom/google/android/gms/internal/ads/arx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/arx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/arv;->b:Lcom/google/android/gms/internal/ads/arv;

    new-instance v0, Lcom/google/android/gms/internal/ads/ary;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ary;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/arv;->c:Lcom/google/android/gms/internal/ads/arv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
