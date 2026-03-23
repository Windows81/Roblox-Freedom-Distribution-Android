.class final Lcom/google/android/gms/internal/measurement/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/aj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/al;->a:Lcom/google/android/gms/internal/measurement/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al;->a:Lcom/google/android/gms/internal/measurement/aj;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/aj;->a(Lcom/google/android/gms/internal/measurement/aj;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
