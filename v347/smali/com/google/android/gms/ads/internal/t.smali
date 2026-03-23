.class final synthetic Lcom/google/android/gms/ads/internal/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ast;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/qd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ast;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/t;->a:Lcom/google/android/gms/internal/ads/ast;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/internal/ads/qd;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->a:Lcom/google/android/gms/internal/ads/ast;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/internal/ads/qd;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/s;->a(Lcom/google/android/gms/internal/ads/ast;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qd;Z)V

    return-void
.end method
