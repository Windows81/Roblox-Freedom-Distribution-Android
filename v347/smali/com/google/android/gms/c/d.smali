.class final Lcom/google/android/gms/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/c/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/d;->a:Lcom/google/android/gms/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/d;->a:Lcom/google/android/gms/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/c/b;->a(Lcom/google/android/gms/c/b;I)V

    return-void
.end method
