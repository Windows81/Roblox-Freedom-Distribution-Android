.class final Lcom/google/android/gms/common/api/internal/al;
.super Lcom/google/android/gms/common/api/internal/c$a;


# instance fields
.field private final synthetic a:Landroid/app/Dialog;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ak;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/al;->b:Lcom/google/android/gms/common/api/internal/ak;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/al;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/al;->b:Lcom/google/android/gms/common/api/internal/ak;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ak;->a:Lcom/google/android/gms/common/api/internal/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ai;->c()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/al;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/al;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
