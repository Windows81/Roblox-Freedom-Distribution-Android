.class final Lcom/google/android/gms/common/api/internal/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/bd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/be;->a:Lcom/google/android/gms/common/api/internal/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/be;->a:Lcom/google/android/gms/common/api/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bd;->a:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d$a;->c(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->g()V

    return-void
.end method
