.class final synthetic Lcom/google/android/gms/internal/ads/mv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/no;

.field private final b:Lcom/google/android/gms/internal/ads/mn;

.field private final c:Lcom/google/android/gms/internal/ads/nd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/mn;Lcom/google/android/gms/internal/ads/nd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mv;->a:Lcom/google/android/gms/internal/ads/no;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mv;->b:Lcom/google/android/gms/internal/ads/mn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mv;->c:Lcom/google/android/gms/internal/ads/nd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mv;->a:Lcom/google/android/gms/internal/ads/no;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mv;->b:Lcom/google/android/gms/internal/ads/mn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mv;->c:Lcom/google/android/gms/internal/ads/nd;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ms;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/mn;Lcom/google/android/gms/internal/ads/nd;)V

    return-void
.end method
