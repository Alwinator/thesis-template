import numpy as np
import matplotlib.pyplot as plot


def generate_0():
    time = np.arange(0, 10, 0.1)
    amplitude = np.sin(time)

    plot.plot(time, amplitude)
    plot.title('Sine wave')
    plot.xlabel('Time')
    plot.ylabel('Amplitude = sin(time)')
    plot.grid(True, which='both')
    plot.axhline(y=0, color='k')
    plot.tight_layout()

    plot.savefig(f"writing/images/generated_0.png", dpi=300, bbox_inches='tight', pad_inches=0)