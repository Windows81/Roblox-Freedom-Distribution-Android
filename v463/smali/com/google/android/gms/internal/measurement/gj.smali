.class final Lcom/google/android/gms/internal/measurement/gj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/gb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/gb;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gj;->b:Lcom/google/android/gms/internal/measurement/gb;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/gj;->a:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gj;->b:Lcom/google/android/gms/internal/measurement/gb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gj;->a:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/gb;->b(Lcom/google/android/gms/internal/measurement/gb;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method
