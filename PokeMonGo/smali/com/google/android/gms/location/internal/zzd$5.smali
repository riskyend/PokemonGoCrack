.class Lcom/google/android/gms/location/internal/zzd$5;
.super Lcom/google/android/gms/location/internal/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzd;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaFd:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic zzaFe:Lcom/google/android/gms/location/LocationListener;

.field final synthetic zzaFf:Lcom/google/android/gms/location/internal/zzd;

.field final synthetic zzaFl:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzd$5;->zzaFf:Lcom/google/android/gms/location/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzd$5;->zzaFd:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/location/internal/zzd$5;->zzaFe:Lcom/google/android/gms/location/LocationListener;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/zzd$5;->zzaFl:Landroid/os/Looper;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zzd$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzd$5;->zza(Lcom/google/android/gms/location/internal/zzl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/internal/zzd$5$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/zzd$5$1;-><init>(Lcom/google/android/gms/location/internal/zzd$5;)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzd$5;->zzaFd:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzd$5;->zzaFe:Lcom/google/android/gms/location/LocationListener;

    iget-object v3, p0, Lcom/google/android/gms/location/internal/zzd$5;->zzaFl:Landroid/os/Looper;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/google/android/gms/location/internal/zzl;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;Lcom/google/android/gms/location/internal/zzg;)V

    return-void
.end method