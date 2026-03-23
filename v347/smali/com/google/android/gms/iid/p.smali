.class final Lcom/google/android/gms/iid/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Intent;

.field private final synthetic b:Landroid/content/Intent;

.field private final synthetic c:Lcom/google/android/gms/iid/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/o;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/p;->c:Lcom/google/android/gms/iid/o;

    iput-object p2, p0, Lcom/google/android/gms/iid/p;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/gms/iid/p;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/iid/p;->c:Lcom/google/android/gms/iid/o;

    iget-object v1, p0, Lcom/google/android/gms/iid/p;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/o;->handleIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/iid/p;->c:Lcom/google/android/gms/iid/o;

    iget-object v1, p0, Lcom/google/android/gms/iid/p;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/gms/iid/o;->a(Lcom/google/android/gms/iid/o;Landroid/content/Intent;)V

    return-void
.end method
