.class final synthetic Lcom/google/android/gms/iid/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/iid/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/ad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/iid/af;->a:Lcom/google/android/gms/iid/ad;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/iid/af;->a:Lcom/google/android/gms/iid/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/iid/ad;->b()V

    return-void
.end method
