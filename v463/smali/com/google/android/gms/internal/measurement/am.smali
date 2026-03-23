.class final Lcom/google/android/gms/internal/measurement/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ComponentName;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ak;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/am;->b:Lcom/google/android/gms/internal/measurement/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/am;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/am;->b:Lcom/google/android/gms/internal/measurement/ak;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ak;->a:Lcom/google/android/gms/internal/measurement/ai;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/am;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ai;->a(Lcom/google/android/gms/internal/measurement/ai;Landroid/content/ComponentName;)V

    return-void
.end method
