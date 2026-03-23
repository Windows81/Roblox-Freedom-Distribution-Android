.class final synthetic Lcom/google/android/gms/internal/measurement/jz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ki;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/jy;

.field private final b:Lcom/google/android/gms/internal/measurement/jv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/jy;Lcom/google/android/gms/internal/measurement/jv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/jz;->a:Lcom/google/android/gms/internal/measurement/jy;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/jz;->b:Lcom/google/android/gms/internal/measurement/jv;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jz;->a:Lcom/google/android/gms/internal/measurement/jy;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jz;->b:Lcom/google/android/gms/internal/measurement/jv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/jv;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/jy;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
