.class public final Lcom/google/android/gms/internal/ads/bat;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/kr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/kr",
            "<",
            "Lcom/google/android/gms/internal/ads/ayy;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/internal/ads/kr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/kr",
            "<",
            "Lcom/google/android/gms/internal/ads/ayy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/azk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bau;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bat;->a:Lcom/google/android/gms/internal/ads/kr;

    new-instance v0, Lcom/google/android/gms/internal/ads/bav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bav;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bat;->b:Lcom/google/android/gms/internal/ads/kr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/azk;

    sget-object v4, Lcom/google/android/gms/internal/ads/bat;->a:Lcom/google/android/gms/internal/ads/kr;

    sget-object v5, Lcom/google/android/gms/internal/ads/bat;->b:Lcom/google/android/gms/internal/ads/kr;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/azk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kr;Lcom/google/android/gms/internal/ads/kr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bat;->c:Lcom/google/android/gms/internal/ads/azk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bao;Lcom/google/android/gms/internal/ads/ban;)Lcom/google/android/gms/internal/ads/bal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bao",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/ban",
            "<TO;>;)",
            "Lcom/google/android/gms/internal/ads/bal",
            "<TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/baw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bat;->c:Lcom/google/android/gms/internal/ads/azk;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/baw;-><init>(Lcom/google/android/gms/internal/ads/azk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bao;Lcom/google/android/gms/internal/ads/ban;)V

    return-object v0
.end method
