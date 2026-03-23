.class final synthetic Lcom/google/android/gms/iid/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/iid/ad;

.field private final b:Lcom/google/android/gms/iid/aj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/ad;Lcom/google/android/gms/iid/aj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/iid/ah;->a:Lcom/google/android/gms/iid/ad;

    iput-object p2, p0, Lcom/google/android/gms/iid/ah;->b:Lcom/google/android/gms/iid/aj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/iid/ah;->a:Lcom/google/android/gms/iid/ad;

    iget-object v1, p0, Lcom/google/android/gms/iid/ah;->b:Lcom/google/android/gms/iid/aj;

    iget v1, v1, Lcom/google/android/gms/iid/aj;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/ad;->a(I)V

    return-void
.end method
