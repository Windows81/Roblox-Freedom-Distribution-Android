.class final Lcom/google/android/gms/internal/measurement/hp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ComponentName;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/hn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/hn;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/hp;->b:Lcom/google/android/gms/internal/measurement/hn;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/hp;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hp;->b:Lcom/google/android/gms/internal/measurement/hn;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hn;->a:Lcom/google/android/gms/internal/measurement/gz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hp;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/gz;->a(Lcom/google/android/gms/internal/measurement/gz;Landroid/content/ComponentName;)V

    return-void
.end method
